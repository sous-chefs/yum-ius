e_rel = os.release.to_i
e_arch = 'x86_64'

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
  describe ini("/etc/yum.repos.d/#{repo}.repo") do
    its("#{repo}.gpgkey") { should cmp "https://repo.ius.io/RPM-GPG-KEY-IUS-#{e_rel}" }
    its("#{repo}.gpgcheck") { should cmp 1 }
    its("#{repo}.failovermethod") { should cmp 'priority' }
  end
end

describe yum.repo('ius') do
  its('baseurl') { should cmp "https://repo.ius.io/#{e_rel}/#{e_arch}/" }
end
describe yum.repo('ius-debuginfo') do
  its('baseurl') { should cmp "https://repo.ius.io/#{e_rel}/#{e_arch}/debug/" }
end
describe yum.repo('ius-source') do
  its('baseurl') { should cmp "https://repo.ius.io/#{e_rel}/src/" }
end
describe yum.repo('ius-archive') do
  its('baseurl') { should cmp "https://repo.ius.io/archive/#{e_rel}/#{e_arch}/" }
end
describe yum.repo('ius-archive-debuginfo') do
  its('baseurl') { should cmp "https://repo.ius.io/archive/#{e_rel}/#{e_arch}/debug/" }
end
describe yum.repo('ius-archive-source') do
  its('baseurl') { should cmp "https://repo.ius.io/archive/#{e_rel}/src/" }
end
describe yum.repo('ius-testing') do
  its('baseurl') { should cmp "https://repo.ius.io/testing/#{e_rel}/#{e_arch}/" }
end
describe yum.repo('ius-testing-debuginfo') do
  its('baseurl') { should cmp "https://repo.ius.io/testing/#{e_rel}/#{e_arch}/debug/" }
end
describe yum.repo('ius-testing-source') do
  its('baseurl') { should cmp "https://repo.ius.io/testing/#{e_rel}/src/" }
end
