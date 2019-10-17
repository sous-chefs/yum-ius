default['yum']['ius']['repositoryid'] = 'ius'
default['yum']['ius']['enabled'] = true
default['yum']['ius']['managed'] = true
default['yum']['ius']['failovermethod'] = 'priority'
default['yum']['ius']['gpgkey'] = "https://repo.ius.io/RPM-GPG-KEY-IUS-#{node['platform_version'].to_i}"
default['yum']['ius']['gpgcheck'] = true
default['yum']['ius']['description'] = "IUS Community Packages for Enterprise Linux #{node['platform_version'].to_i} - $basearch"
default['yum']['ius']['baseurl'] = "https://repo.ius.io/#{node['platform_version'].to_i}/$basearch"
