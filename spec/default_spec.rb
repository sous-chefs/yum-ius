# Encoding: utf-8

require 'spec_helper'

describe 'yum-ius::default' do
  context 'yum-ius::default uses default attributes' do
    let(:chef_run) { ChefSpec::Runner.new(:step_into => ['yum_repository']).converge(described_recipe) }

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

      it "steps into yum_repository and creates template[/etc/yum.repos.d/#{repo}.repo]" do
        expect(chef_run).to render_file("/etc/yum.repos.d/#{repo}.repo")
      end
    end

  end
end
