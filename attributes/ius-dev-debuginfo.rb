default['yum']['ius-dev-debuginfo']['repositoryid'] = 'ius-dev-debuginfo'
default['yum']['ius-dev-debuginfo']['enabled'] = false
default['yum']['ius-dev-debuginfo']['managed'] = false
default['yum']['ius-dev-debuginfo']['failovermethod'] = 'priority'
default['yum']['ius-dev-debuginfo']['gpgkey'] = 'https://dl.iuscommunity.org/pub/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius-dev-debuginfo']['gpgcheck'] = true
default['yum']['ius-archive-debuginfo']['sslverify'] = false if node['platform_version'].to_i == 5
default['yum']['ius-dev-debuginfo']['description'] = "IUS Community Packages for Enterprise Linux #{node['platform_version'].to_i} - $basearch Dev Debug Info"
default['yum']['ius-dev-debuginfo']['mirrorlist'] = case node['platform']
                                                    when 'redhat'
                                                      "https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-el#{node['platform_version'].to_i}-dev-debuginfo&arch=$basearch&protocol=http"
                                                    else
                                                      "https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-centos#{node['platform_version'].to_i}-dev-debuginfo&arch=$basearch&protocol=http"
                                                    end
