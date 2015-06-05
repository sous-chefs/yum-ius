default['yum']['ius-dev-debuginfo']['repositoryid'] = 'ius-dev-debuginfo'
default['yum']['ius-dev-debuginfo']['enabled'] = false
default['yum']['ius-dev-debuginfo']['managed'] = false
default['yum']['ius-dev-debuginfo']['failovermethod'] = 'priority'
default['yum']['ius-dev-debuginfo']['gpgkey'] = 'https://dl.iuscommunity.org/pub/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius-dev-debuginfo']['gpgcheck'] = true
case node['platform_version'].to_i
when 5
  default['yum']['ius-archive-debuginfo']['sslverify'] = false
end

case node['platform_version'].to_i
when 5
  default['yum']['ius-dev-debuginfo']['description'] = 'IUS Community Packages for Enterprise Linux 5 - $basearch Dev Debug Info'
when 6
  default['yum']['ius-dev-debuginfo']['description'] = 'IUS Community Packages for Enterprise Linux 6 - $basearch Dev Debug Info'
when 7
  default['yum']['ius-dev-debuginfo']['description'] = 'IUS Community Packages for Enterprise Linux 7 - $basearch Dev Debug Info'
end

case node['platform']
when 'redhat'
  case node['platform_version'].to_i
  when 5
    default['yum']['ius-dev-debuginfo']['mirrorlist'] = 'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-el5-dev-debuginfo&arch=$basearch&protocol=http'
  when 6
    default['yum']['ius-dev-debuginfo']['mirrorlist'] = 'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-el6-dev-debuginfo&arch=$basearch&protocol=http'
  when 7
    default['yum']['ius-dev-debuginfo']['mirrorlist'] = 'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-el7-dev-debuginfo&arch=$basearch&protocol=http'
  end
else
  case node['platform_version'].to_i
  when 5
    default['yum']['ius-dev-debuginfo']['mirrorlist'] = 'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-centos5-dev-debuginfo&arch=$basearch&protocol=http'
  when 6
    default['yum']['ius-dev-debuginfo']['mirrorlist'] = 'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-centos6-dev-debuginfo&arch=$basearch&protocol=http'
  when 7
    default['yum']['ius-dev-debuginfo']['mirrorlist'] = 'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-centos7-dev-debuginfo&arch=$basearch&protocol=http'
  end
end
