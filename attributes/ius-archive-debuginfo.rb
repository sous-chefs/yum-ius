default['yum']['ius-archive-debuginfo']['repositoryid'] = 'ius-archive-debuginfo'
default['yum']['ius-archive-debuginfo']['enabled'] = false
default['yum']['ius-archive-debuginfo']['managed'] = false
default['yum']['ius-archive-debuginfo']['failovermethod'] = 'priority'
default['yum']['ius-archive-debuginfo']['gpgkey'] = "https://repo.ius.io/RPM-GPG-KEY-IUS-#{node['platform_version'].to_i}"
default['yum']['ius-archive-debuginfo']['gpgcheck'] = true
default['yum']['ius-archive-debuginfo']['description'] = "IUS Community Packages for Enterprise Linux #{node['platform_version'].to_i} - $basearch Archive Debug"
default['yum']['ius-archive-debuginfo']['baseurl'] = "https://repo.ius.io/archive/#{node['platform_version'].to_i}/$basearch/debug"
