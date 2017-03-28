default['yum']['ius-testing']['repositoryid'] = 'ius-testing'
default['yum']['ius-testing']['enabled'] = false
default['yum']['ius-testing']['managed'] = false
default['yum']['ius-testing']['failovermethod'] = 'priority'
default['yum']['ius-testing']['gpgkey'] = 'https://dl.iuscommunity.org/pub/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius-testing']['gpgcheck'] = true
default['yum']['ius-archive-debuginfo']['sslverify'] = false if node['platform_version'].to_i == 5
default['yum']['ius-testing']['description'] = "IUS Community Packages for Enterprise Linux #{node['platform_version'].to_i} - $basearch Testing"
default['yum']['ius-testing']['mirrorlist'] = case node['platform']
                                              when 'redhat'
                                                "https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-el#{node['platform_version'].to_i}-testing&arch=$basearch&protocol=http"
                                              else
                                                "https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-centos#{node['platform_version'].to_i}-testing&arch=$basearch&protocol=http"
                                              end
