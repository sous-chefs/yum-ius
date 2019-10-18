default['yum']['ius-archive-source']['repositoryid'] = 'ius-archive-source'
default['yum']['ius-archive-source']['enabled'] = false
default['yum']['ius-archive-source']['managed'] = false
default['yum']['ius-archive-source']['failovermethod'] = 'priority'
default['yum']['ius-archive-source']['gpgkey'] = "https://repo.ius.io/RPM-GPG-KEY-IUS-#{node['platform_version'].to_i}"
default['yum']['ius-archive-source']['gpgcheck'] = true
default['yum']['ius-archive-source']['description'] = "IUS Community Packages for Enterprise Linux #{node['platform_version'].to_i} - $basearch Archive Source"
default['yum']['ius-archive-source']['baseurl'] = "https://repo.ius.io/archive/#{node['platform_version'].to_i}/src"
