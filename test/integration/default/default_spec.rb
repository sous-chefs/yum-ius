describe yum.repo('ius') do
  it { should be_enabled }
  it { should exist }
  its('baseurl') { should cmp "https://repo.ius.io/#{os.release.to_i}/x86_64/" }
end

describe ini('/etc/yum.repos.d/ius.repo') do
  its('ius.gpgkey') { should cmp "https://repo.ius.io/RPM-GPG-KEY-IUS-#{os.release.to_i}" }
  its('ius.gpgcheck') { should cmp 1 }
  its('ius.failovermethod') { should cmp 'priority' }
end
