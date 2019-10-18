default['yum']['ius-testing']['repositoryid'] = 'ius-testing'
default['yum']['ius-testing']['enabled'] = false
default['yum']['ius-testing']['managed'] = false
default['yum']['ius-testing']['failovermethod'] = 'priority'
default['yum']['ius-testing']['gpgkey'] = "https://repo.ius.io/RPM-GPG-KEY-IUS-#{node['platform_version'].to_i}"
default['yum']['ius-testing']['gpgcheck'] = true
default['yum']['ius-testing']['description'] = "IUS Community Packages for Enterprise Linux #{node['platform_version'].to_i} - $basearch Testing"
default['yum']['ius-testing']['baseurl'] = "https://repo.ius.io/testing/#{node['platform_version'].to_i}/$basearch"
