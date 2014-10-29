default['yum']['ius-testing']['repositoryid'] = 'ius-testing'
default['yum']['ius-testing']['enabled'] = false
default['yum']['ius-testing']['managed'] = false
default['yum']['ius-testing']['failovermethod'] = 'priority'
default['yum']['ius-testing']['gpgkey'] = 'http://mirror.its.dal.ca/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius-testing']['gpgcheck'] = true
case node['platform_version'].to_i
when 5
  default['yum']['ius-testing']['description'] = 'IUS Community Packages for Enterprise Linux 5 - $basearch Testing'
when 6
  default['yum']['ius-testing']['description'] = 'IUS Community Packages for Enterprise Linux 6 - $basearch Testing'
when 7
  default['yum']['ius-testing']['description'] = 'IUS Community Packages for Enterprise Linux 7 - $basearch Testing'
end

case node['platform']
when 'redhat'
  case node['platform_version'].to_i
  when 5
    default['yum']['ius-testing']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-el5-testing&arch=$basearch'
  when 6
    default['yum']['ius-testing']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-el6-testing&arch=$basearch'
  when 7
    default['yum']['ius-testing']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-el7-testing&arch=$basearch'
  end
else
  case node['platform_version'].to_i
  when 5
    default['yum']['ius-testing']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-centos5-testing&arch=$basearch'
  when 6
    default['yum']['ius-testing']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-centos6-testing&arch=$basearch'
  when 7
    default['yum']['ius-testing']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-centos7-testing&arch=$basearch'
  end
end
