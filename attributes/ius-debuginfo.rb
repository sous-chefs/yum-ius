default['yum']['ius-debuginfo']['repositoryid'] = 'ius-debuginfo'
default['yum']['ius-debuginfo']['enabled'] = false
default['yum']['ius-debuginfo']['managed'] = false
default['yum']['ius-debuginfo']['failovermethod'] = 'priority'
default['yum']['ius-debuginfo']['gpgkey'] = 'http://mirror.its.dal.ca/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius-debuginfo']['gpgcheck'] = true
case node['platform_version'].to_i
when 5
  default['yum']['ius-debuginfo']['description'] = 'IUS Community Packages for Enterprise Linux 5 - $basearch Debug'
when 6
  default['yum']['ius-debuginfo']['description'] = 'IUS Community Packages for Enterprise Linux 6 - $basearch Debug'
when 7
  default['yum']['ius-debuginfo']['description'] = 'IUS Community Packages for Enterprise Linux 7 - $basearch Debug'
end

case node['platform']
when 'redhat'
  case node['platform_version'].to_i
  when 5
    default['yum']['ius-debuginfo']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-el5-debuginfo&arch=$basearch'
  when 6
    default['yum']['ius-debuginfo']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-el6-debuginfo&arch=$basearch'
  when 7
    default['yum']['ius-debuginfo']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-el7-debuginfo&arch=$basearch'
  end
else
  case node['platform_version'].to_i
  when 5
    default['yum']['ius-debuginfo']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-centos5-debuginfo&arch=$basearch'
  when 6
    default['yum']['ius-debuginfo']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-centos6-debuginfo&arch=$basearch'
  when 7
    default['yum']['ius-debuginfo']['mirrorlist'] = 'http://dmirr.iuscommunity.org/mirrorlist/?repo=ius-centos7-debuginfo&arch=$basearch'
  end
end
