default['yum']['ius-dev-source']['repositoryid'] = 'ius-dev-source'
default['yum']['ius-dev-source']['enabled'] = false
default['yum']['ius-dev-source']['managed'] = false
default['yum']['ius-dev-source']['failovermethod'] = 'priority'
default['yum']['ius-dev-source']['gpgkey'] = 'https://dl.iuscommunity.org/pub/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius-dev-source']['gpgcheck'] = true
default['yum']['ius-archive-debuginfo']['sslverify'] = false if node['platform_version'].to_i == 5
default['yum']['ius-dev-source']['description'] = "IUS Community Packages for Enterprise Linux #{node['platform_version'].to_i} - $basearch Dev Source"
default['yum']['ius-dev-source']['mirrorlist'] = case node['platform']
                                                 when 'redhat'
                                                   "https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-el#{node['platform_version'].to_i}-dev-source&arch=$basearch&protocol=http"
                                                 else
                                                   "https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-centos#{node['platform_version'].to_i}-dev-source&arch=$basearch&protocol=http"
                                                 end
