default['yum']['ius-dev']['repositoryid'] = 'ius-dev'
default['yum']['ius-dev']['enabled'] = false
default['yum']['ius-dev']['managed'] = false
default['yum']['ius-dev']['failovermethod'] = 'priority'
default['yum']['ius-dev']['gpgkey'] = 'https://dl.iuscommunity.org/pub/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius-dev']['gpgcheck'] = true
default['yum']['ius-archive-debuginfo']['sslverify'] = false if node['platform_version'].to_i == 5
default['yum']['ius-dev']['description'] = 'IUS Community Packages for Enterprise Linux $releasever - $basearch Dev'
default['yum']['ius-dev']['mirrorlist'] = case node['platform']
                                          when 'redhat'
                                            'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-el$releasever-dev&arch=$basearch&protocol=http'
                                          else
                                            'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-centos$releasever-dev&arch=$basearch&protocol=http'
                                          end
