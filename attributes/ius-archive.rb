default['yum']['ius-archive']['repositoryid'] = 'ius-archive'
default['yum']['ius-archive']['enabled'] = false
default['yum']['ius-archive']['managed'] = false
default['yum']['ius-archive']['failovermethod'] = 'priority'
default['yum']['ius-archive']['gpgkey'] = "https://repo.ius.io/RPM-GPG-KEY-IUS-#{node['platform_version'].to_i}"
default['yum']['ius-archive']['gpgcheck'] = true
default['yum']['ius-archive']['description'] = "IUS Community Packages for Enterprise Linux #{node['platform_version'].to_i} - $basearch Archive"
default['yum']['ius-archive']['baseurl'] = "https://repo.ius.io/archive/#{node['platform_version'].to_i}/$basearch"
