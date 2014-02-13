default['yum']['ius']['repositoryid'] = 'ius'
default['yum']['ius']['enabled'] = true
default['yum']['ius']['managed'] = true
default['yum']['ius']['failovermethod'] = 'priority'
default['yum']['ius']['gpgkey'] = 'http://dl.iuscommunity.org/pub/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius']['gpgcheck'] = true
case node['platform_version'].to_i
when 5
  default['yum']['ius']['description'] = 'IUS Community Packages for Enterprise Linux 5 - $basearch'
  default['yum']['ius']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-el5&arch=$basearch'
when 6
  default['yum']['ius']['description'] = 'IUS Community Packages for Enterprise Linux 6 - $basearch'
  default['yum']['ius']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-el6&arch=$basearch'
end
