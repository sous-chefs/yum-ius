default['yum']['ius-dev-source']['repositoryid'] = 'ius-dev-source'
default['yum']['ius-dev-source']['enabled'] = false
default['yum']['ius-dev-source']['managed'] = false
default['yum']['ius-dev-source']['failovermethod'] = 'priority'
default['yum']['ius-dev-source']['gpgkey'] = 'https://dl.iuscommunity.org/pub/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius-dev-source']['gpgcheck'] = true
case node['platform_version'].to_i
when 5
  default['yum']['ius-archive-debuginfo']['sslverify'] = false
end

case node['platform_version'].to_i
when 5
  default['yum']['ius-dev-source']['description'] = 'IUS Community Packages for Enterprise Linux 5 - $basearch Dev Source'
when 6
  default['yum']['ius-dev-source']['description'] = 'IUS Community Packages for Enterprise Linux 6 - $basearch Dev Source'
when 7
  default['yum']['ius-dev-source']['description'] = 'IUS Community Packages for Enterprise Linux 7 - $basearch Dev Source'
end

case node['platform']
when 'redhat'
  case node['platform_version'].to_i
  when 5
    default['yum']['ius-dev-source']['mirrorlist'] = 'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-el5-dev-source&arch=$basearch&protocol=http'
  when 6
    default['yum']['ius-dev-source']['mirrorlist'] = 'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-el6-dev-source&arch=$basearch&protocol=http'
  when 7
    default['yum']['ius-dev-source']['mirrorlist'] = 'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-el7-dev-source&arch=$basearch&protocol=http'
  end
else
  case node['platform_version'].to_i
  when 5
    default['yum']['ius-dev-source']['mirrorlist'] = 'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-centos5-dev-source&arch=$basearch&protocol=http'
  when 6
    default['yum']['ius-dev-source']['mirrorlist'] = 'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-centos6-dev-source&arch=$basearch&protocol=http'
  when 7
    default['yum']['ius-dev-source']['mirrorlist'] = 'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-centos7-dev-source&arch=$basearch&protocol=http'
  end
end
