require 'spec_helper'

describe 'yum-ius::default' do
  context 'yum-ius::default uses default attributes' do
    cached(:chef_run) do
      ChefSpec::SoloRunner.new do |node|
        node.override['yum']['ius']['managed'] = true
        node.override['yum']['ius-debuginfo']['managed'] = true
        node.override['yum']['ius-source']['managed'] = true
        node.override['yum']['ius-archive']['managed'] = true
        node.override['yum']['ius-archive-debuginfo']['managed'] = true
        node.override['yum']['ius-archive-source']['managed'] = true
        node.override['yum']['ius-testing']['managed'] = true
        node.override['yum']['ius-testing-debuginfo']['managed'] = true
        node.override['yum']['ius-testing-source']['managed'] = true
        node.override['yum']['ius-dev']['managed'] = true
        node.override['yum']['ius-dev-debuginfo']['managed'] = true
        node.override['yum']['ius-dev-source']['managed'] = true
      end.converge(described_recipe)
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
end
