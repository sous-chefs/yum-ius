default['yum']['ius-debuginfo']['repositoryid'] = 'ius-debuginfo'
default['yum']['ius-debuginfo']['enabled'] = false
default['yum']['ius-debuginfo']['managed'] = false
default['yum']['ius-debuginfo']['failovermethod'] = 'priority'
default['yum']['ius-debuginfo']['gpgkey'] = "https://repo.ius.io/RPM-GPG-KEY-IUS-#{node['platform_version'].to_i}"
default['yum']['ius-debuginfo']['gpgcheck'] = true
default['yum']['ius-debuginfo']['description'] = "IUS Community Packages for Enterprise Linux #{node['platform_version'].to_i} - $basearch Debug"
default['yum']['ius-debuginfo']['baseurl'] = "https://repo.ius.io/#{node['platform_version'].to_i}/$basearch/debug"
