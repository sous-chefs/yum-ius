default['yum']['ius-archive']['repositoryid'] = 'ius-archive'
default['yum']['ius-archive']['enabled'] = false
default['yum']['ius-archive']['managed'] = false
default['yum']['ius-archive']['failovermethod'] = 'priority'
default['yum']['ius-archive']['gpgkey'] = 'https://dl.iuscommunity.org/pub/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius-archive']['gpgcheck'] = true
default['yum']['ius-archive-debuginfo']['sslverify'] = false if node['platform_version'].to_i == 5
default['yum']['ius-archive']['description'] = "IUS Community Packages for Enterprise Linux #{node['platform_version'].to_i} - $basearch Archive"
default['yum']['ius-archive']['baseurl'] = "https://repo.ius.io/#{node['platform_version'].to_i}/$basearch/archive"
