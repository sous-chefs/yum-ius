%w( ius-testing-debuginfo ius-testing-source ius-dev-debuginfo ius ius-debuginfo ius-source ius-archive ius-archive-source ius-archive-debuginfo).each do |repo|
  describe file("/etc/yum.repos.d/#{repo}.repo") do
    it { should exist }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
  end
end
