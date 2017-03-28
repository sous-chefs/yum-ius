default['yum']['ius-archive-source']['repositoryid'] = 'ius-archive-source'
default['yum']['ius-archive-source']['enabled'] = false
default['yum']['ius-archive-source']['managed'] = false
default['yum']['ius-archive-source']['failovermethod'] = 'priority'
default['yum']['ius-archive-source']['gpgkey'] = 'https://dl.iuscommunity.org/pub/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius-archive-source']['gpgcheck'] = true
default['yum']['ius-archive-debuginfo']['sslverify'] = false if node['platform_version'].to_i == 5
default['yum']['ius-archive-source']['description'] = "IUS Community Packages for Enterprise Linux #{node['platform_version'].to_i} - $basearch Archive Source"
default['yum']['ius-archive-source']['mirrorlist'] = case node['platform']
                                                     when 'redhat'
                                                       "https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-el#{node['platform_version'].to_i}-archive-source&arch=$basearch&protocol=http"
                                                     else
                                                       "https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-centos#{node['platform_version'].to_i}-archive-source&arch=$basearch&protocol=http"
                                                     end
