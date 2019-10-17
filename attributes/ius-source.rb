default['yum']['ius-source']['repositoryid'] = 'ius-source'
default['yum']['ius-source']['enabled'] = false
default['yum']['ius-source']['managed'] = false
default['yum']['ius-source']['failovermethod'] = 'priority'
default['yum']['ius-source']['gpgkey'] = "https://repo.ius.io/RPM-GPG-KEY-IUS-#{node['platform_version'].to_i}"
default['yum']['ius-source']['gpgcheck'] = true
default['yum']['ius-source']['description'] = "IUS Community Packages for Enterprise Linux #{node['platform_version'].to_i} - $basearch Source"
default['yum']['ius-source']['baseurl'] = "https://repo.ius.io/#{node['platform_version'].to_i}/src"
