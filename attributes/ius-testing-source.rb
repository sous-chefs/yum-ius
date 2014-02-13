default['yum']['ius-testing-source']['repositoryid'] = 'ius-testing-source'
default['yum']['ius-testing-source']['enabled'] = false
default['yum']['ius-testing-source']['managed'] = false
default['yum']['ius-testing-source']['failovermethod'] = 'priority'
default['yum']['ius-testing-source']['gpgkey'] = 'http://mirror.its.dal.ca/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius-testing-source']['gpgcheck'] = true
case node['platform_version'].to_i
when 5
  default['yum']['ius-testing-source']['description'] = 'IUS Community Packages for Enterprise Linux 5 - $basearch Testing Sourece'
  default['yum']['ius-testing-source']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-el5-testing-source&arch=$basearch'
when 6
  default['yum']['ius-testing-source']['description'] = 'IUS Community Packages for Enterprise Linux 6 - $basearch Testing Source'
  default['yum']['ius-testing-source']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-el6-testing-source&arch=$basearch'
end
