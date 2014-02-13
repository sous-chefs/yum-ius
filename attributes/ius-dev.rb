default['yum']['ius-dev']['repositoryid'] = 'ius-dev'
default['yum']['ius-dev']['enabled'] = false
default['yum']['ius-dev']['managed'] = false
default['yum']['ius-dev']['failovermethod'] = 'priority'
default['yum']['ius-dev']['gpgkey'] = 'http://mirror.its.dal.ca/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius-dev']['gpgcheck'] = true
case node['platform_version'].to_i
when 5
  default['yum']['ius-dev']['description'] = 'IUS Community Packages for Enterprise Linux 5 - $basearch Dev'
  default['yum']['ius-dev']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-el5-dev&arch=$basearch'
when 6
  default['yum']['ius-dev']['description'] = 'IUS Community Packages for Enterprise Linux 6 - $basearch Dev'
  default['yum']['ius-dev']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-el6-dev&arch=$basearch'
end
