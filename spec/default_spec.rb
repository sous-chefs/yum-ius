require 'spec_helper'

describe 'yum-ius::default' do
  context 'yum-ius::default uses default attributes' do

    let(:chef_run) do
      ChefSpec::SoloRunner.new do |node|
        node.set['yum']['ius']['managed'] = true
        node.set['yum']['ius-debuginfo']['managed'] = true
        node.set['yum']['ius-source']['managed'] = true
        node.set['yum']['ius-archive']['managed'] = true
        node.set['yum']['ius-archive-debuginfo']['managed'] = true
        node.set['yum']['ius-archive-source']['managed'] = true
        node.set['yum']['ius-testing']['managed'] = true
        node.set['yum']['ius-testing-debuginfo']['managed'] = true
        node.set['yum']['ius-testing-source']['managed'] = true
        node.set['yum']['ius-dev']['managed'] = true
        node.set['yum']['ius-dev-debuginfo']['managed'] = true
        node.set['yum']['ius-dev-source']['managed'] = true
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
      ius-dev
      ius-dev-debuginfo
      ius-dev-source
    ).each do |repo|
      it "creates yum_repository[#{repo}]" do
        expect(chef_run).to create_yum_repository(repo)
      end
    end
  end

  context 'yum-ius::default uses Redhat distro for RHEL6' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new(:platform => 'redhat', :version => '6.5') do |node|
        node.set['yum']['ius']['managed'] = true
        node.set['yum']['ius-debuginfo']['managed'] = true
        node.set['yum']['ius-source']['managed'] = true
        node.set['yum']['ius-archive']['managed'] = true
        node.set['yum']['ius-archive-debuginfo']['managed'] = true
        node.set['yum']['ius-archive-source']['managed'] = true
        node.set['yum']['ius-testing']['managed'] = true
        node.set['yum']['ius-testing-debuginfo']['managed'] = true
        node.set['yum']['ius-testing-source']['managed'] = true
        node.set['yum']['ius-dev']['managed'] = true
        node.set['yum']['ius-dev-debuginfo']['managed'] = true
        node.set['yum']['ius-dev-source']['managed'] = true
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
      ius-dev
      ius-dev-debuginfo
      ius-dev-source
    ).each do |repo|
      it "creates yum_repository[#{repo}] with Redhat repo used in mirrorlist" do
        mirror_repo = repo.sub('ius', 'ius-el6')
        expect(chef_run).to create_yum_repository(repo).with(
          :mirrorlist => "http://dmirr.iuscommunity.org/mirrorlist/?repo=#{mirror_repo}&arch=$basearch"
        )
      end
    end
  end

  context 'yum-ius::default uses CentOS distro for CentOS6' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new(:platform => 'centos', :version => '6.5') do |node|
        node.set['yum']['ius']['managed'] = true
        node.set['yum']['ius-debuginfo']['managed'] = true
        node.set['yum']['ius-source']['managed'] = true
        node.set['yum']['ius-archive']['managed'] = true
        node.set['yum']['ius-archive-debuginfo']['managed'] = true
        node.set['yum']['ius-archive-source']['managed'] = true
        node.set['yum']['ius-testing']['managed'] = true
        node.set['yum']['ius-testing-debuginfo']['managed'] = true
        node.set['yum']['ius-testing-source']['managed'] = true
        node.set['yum']['ius-dev']['managed'] = true
        node.set['yum']['ius-dev-debuginfo']['managed'] = true
        node.set['yum']['ius-dev-source']['managed'] = true
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
      ius-dev
      ius-dev-debuginfo
      ius-dev-source
    ).each do |repo|
      it "creates yum_repository[#{repo}] with CentOS repo used in mirrorlist" do
        mirror_repo = repo.sub('ius', 'ius-centos6')
        expect(chef_run).to create_yum_repository(repo).with(
          :mirrorlist => "http://dmirr.iuscommunity.org/mirrorlist/?repo=#{mirror_repo}&arch=$basearch"
        )
      end
    end
  end
end
