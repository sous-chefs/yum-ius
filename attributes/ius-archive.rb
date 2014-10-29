default['yum']['ius-archive']['repositoryid'] = 'ius-archive'
default['yum']['ius-archive']['enabled'] = false
default['yum']['ius-archive']['managed'] = false
default['yum']['ius-archive']['failovermethod'] = 'priority'
default['yum']['ius-archive']['gpgkey'] = 'http://mirror.its.dal.ca/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius-archive']['gpgcheck'] = true
case node['platform_version'].to_i
when 5
  default['yum']['ius-archive']['description'] = 'IUS Community Packages for Enterprise Linux 5 - $basearch Archive'
when 6
  default['yum']['ius-archive']['description'] = 'IUS Community Packages for Enterprise Linux 6 - $basearch Archive'
when 7
  default['yum']['ius-archive']['description'] = 'IUS Community Packages for Enterprise Linux 7 - $basearch Archive'
end

case node['platform']
when 'redhat'
  case node['platform_version'].to_i
  when 5
    default['yum']['ius-archive']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-el5-archive&arch=$basearch'
  when 6
    default['yum']['ius-archive']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-el6-archive&arch=$basearch'
  when 7
    default['yum']['ius-archive']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-el7-archive&arch=$basearch'
  end
else
  case node['platform_version'].to_i
  when 5
    default['yum']['ius-archive']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-centos5-archive&arch=$basearch'
  when 6
    default['yum']['ius-archive']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-centos6-archive&arch=$basearch'
  when 7
    default['yum']['ius-archive']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-centos7-archive&arch=$basearch'
  end
end
