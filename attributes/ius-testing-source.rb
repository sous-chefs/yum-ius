default['yum']['ius-testing-source']['repositoryid'] = 'ius-testing-source'
default['yum']['ius-testing-source']['enabled'] = false
default['yum']['ius-testing-source']['managed'] = false
default['yum']['ius-testing-source']['failovermethod'] = 'priority'
default['yum']['ius-testing-source']['gpgkey'] = "https://repo.ius.io/RPM-GPG-KEY-IUS-#{node['platform_version'].to_i}"
default['yum']['ius-testing-source']['gpgcheck'] = true
default['yum']['ius-testing-source']['description'] = "IUS Community Packages for Enterprise Linux #{node['platform_version'].to_i} - $basearch Testing Source"
default['yum']['ius-testing-source']['baseurl'] = "https://repo.ius.io/testing/#{node['platform_version'].to_i}/src"
