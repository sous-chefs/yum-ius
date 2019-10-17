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
  describe file("/etc/yum.repos.d/#{repo}.repo") do
    it { should exist }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
  end
end
