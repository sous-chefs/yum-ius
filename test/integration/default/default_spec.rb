describe yum.repo('ius') do
  it { should be_enabled }
  it { should exist }
  its('baseurl') { should cmp "https://repo.ius.io/#{os.release.to_i}/x86_64/" }
end

describe ini("/etc/yum.repos.d/ius.repo") do
  its("#{repo}.gpgkey") { should cmp "https://repo.ius.io/RPM-GPG-KEY-IUS-#{e_rel}" }
  its("#{repo}.gpgcheck") { should cmp 1 }
  its("#{repo}.failovermethod") { should cmp 'priority' }
end
