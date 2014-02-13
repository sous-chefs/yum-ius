require 'spec_helper'

describe 'yum-ius::default' do
  context 'yum-ius::default uses default attributes' do

    let(:chef_run) do
      ChefSpec::Runner.new do |node|
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

    %w{
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
    }.each do |repo|
      it "creates yum_repository[#{repo}]" do
        expect(chef_run).to create_yum_repository(repo)
      end
    end
  end
end
