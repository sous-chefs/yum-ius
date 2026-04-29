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
  yum_ius_repository repo do
    enabled true
  end
end
