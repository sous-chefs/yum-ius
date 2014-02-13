default['yum']['ius-dev-debuginfo']['repositoryid'] = 'ius-dev-debuginfo'
default['yum']['ius-dev-debuginfo']['enabled'] = false
default['yum']['ius-dev-debuginfo']['managed'] = false
default['yum']['ius-dev-debuginfo']['failovermethod'] = 'priority'
default['yum']['ius-dev-debuginfo']['gpgkey'] = 'http://mirror.its.dal.ca/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius-dev-debuginfo']['gpgcheck'] = true
case node['platform_version'].to_i
when 5
  default['yum']['ius-dev-debuginfo']['description'] = 'IUS Community Packages for Enterprise Linux 5 - $basearch Dev Debug Info'
  default['yum']['ius-dev-debuginfo']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-el5-dev-debuginfo&arch=$basearch'
when 6
  default['yum']['ius-dev-debuginfo']['description'] = 'IUS Community Packages for Enterprise Linux 6 - $basearch Dev Debug Info'
  default['yum']['ius-dev-debuginfo']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-el6-dev-debuginfo&arch=$basearch'
end
