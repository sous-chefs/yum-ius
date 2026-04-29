require 'spec_helper'

describe 'test_yum_ius::default' do
  context 'with default properties' do
    cached(:chef_run) do
      ChefSpec::SoloRunner.new(step_into: %w(yum_ius_repository)).converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'includes yum-epel recipe' do
      expect(chef_run).to include_recipe('yum-epel')
    end

    it 'creates yum_repository[ius]' do
      expect(chef_run).to create_yum_repository('ius')
    end
  end
end

describe 'test_yum_ius::enable_all' do
  cached(:chef_run) do
    ChefSpec::SoloRunner.new(step_into: %w(yum_ius_repository)).converge(described_recipe)
  end

  it 'converges successfully' do
    expect { chef_run }.to_not raise_error
  end

  it 'includes yum-epel recipe once' do
    expect(chef_run).to include_recipe('yum-epel')
  end

  %w(
    ius
    ius-debuginfo
    ius-source
    ius-archive
    ius-archive-debuginfo
    ius-archive-source
    ius-testing
    ius-testing-debuginfo
    ius-testing-source
  ).each do |repo|
    it "creates yum_repository[#{repo}]" do
      expect(chef_run).to create_yum_repository(repo)
    end
  end
end

describe 'yum_ius_repository with include_epel false' do
  cached(:chef_run) do
    ChefSpec::SoloRunner.new(step_into: %w(yum_ius_repository)) do |node|
      node.override['platform'] = 'centos'
      node.override['platform_version'] = '7'
    end.converge('recipe[test_yum_ius::default]')
  end

  it 'includes yum-epel by default' do
    expect(chef_run).to include_recipe('yum-epel')
  end
end

describe 'yum_ius_repository remove action' do
  cached(:chef_run) do
    ChefSpec::SoloRunner.new(step_into: %w(yum_ius_repository)) do |node|
      node.override['platform'] = 'centos'
      node.override['platform_version'] = '7'
    end.converge('recipe[test_yum_ius::default]')
  end

  it 'defines the remove action on the resource' do
    resource = chef_run.find_resource('yum_ius_repository', 'ius')
    expect(resource.allowed_actions).to include(:delete)
  end
end
