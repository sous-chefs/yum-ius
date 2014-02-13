default['yum']['ius-dev-source']['repositoryid'] = 'ius-dev-source'
default['yum']['ius-dev-source']['enabled'] = false
default['yum']['ius-dev-source']['managed'] = false
default['yum']['ius-dev-source']['failovermethod'] = 'priority'
default['yum']['ius-dev-source']['gpgkey'] = 'http://mirror.its.dal.ca/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius-dev-source']['gpgcheck'] = true
case node['platform_version'].to_i
when 5
  default['yum']['ius-dev-source']['description'] = 'IUS Community Packages for Enterprise Linux 5 - $basearch Dev Source'
  default['yum']['ius-dev-source']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-el5-dev-source&arch=$basearch'
when 6
  default['yum']['ius-dev-source']['description'] = 'IUS Community Packages for Enterprise Linux 6 - $basearch Dev Source'
  default['yum']['ius-dev-source']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-el6-dev-source&arch=$basearch'
end
