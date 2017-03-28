default['yum']['ius-debuginfo']['repositoryid'] = 'ius-debuginfo'
default['yum']['ius-debuginfo']['enabled'] = false
default['yum']['ius-debuginfo']['managed'] = false
default['yum']['ius-debuginfo']['failovermethod'] = 'priority'
default['yum']['ius-debuginfo']['gpgkey'] = 'https://dl.iuscommunity.org/pub/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius-debuginfo']['gpgcheck'] = true
default['yum']['ius-archive-debuginfo']['sslverify'] = false if node['platform_version'].to_i == 5
default['yum']['ius-debuginfo']['description'] = "IUS Community Packages for Enterprise Linux #{node['platform_version'].to_i} - $basearch Debug"
default['yum']['ius-debuginfo']['mirrorlist'] = case node['platform']
                                                when 'redhat'
                                                  "https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-el#{node['platform_version'].to_i}-debuginfo&arch=$basearch&protocol=http"
                                                else
                                                  "https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-centos#{node['platform_version'].to_i}-debuginfo&arch=$basearch&protocol=http"
                                                end
