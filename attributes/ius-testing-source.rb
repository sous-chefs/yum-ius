default['yum']['ius-testing-source']['repositoryid'] = 'ius-testing-source'
default['yum']['ius-testing-source']['enabled'] = false
default['yum']['ius-testing-source']['managed'] = false
default['yum']['ius-testing-source']['failovermethod'] = 'priority'
default['yum']['ius-testing-source']['gpgkey'] = 'https://dl.iuscommunity.org/pub/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius-testing-source']['gpgcheck'] = true
case node['platform_version'].to_i
when 5
  default['yum']['ius-archive-debuginfo']['sslverify'] = false
end

case node['platform_version'].to_i
when 5
  default['yum']['ius-testing-source']['description'] = 'IUS Community Packages for Enterprise Linux 5 - $basearch Testing Source'
when 6
  default['yum']['ius-testing-source']['description'] = 'IUS Community Packages for Enterprise Linux 6 - $basearch Testing Source'
when 7
  default['yum']['ius-testing-source']['description'] = 'IUS Community Packages for Enterprise Linux 7 - $basearch Testing Source'
end

case node['platform']
when 'redhat'
  case node['platform_version'].to_i
  when 5
    default['yum']['ius-testing-source']['mirrorlist'] = 'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-el5-testing-source&arch=$basearch&protocol=http'
  when 6
    default['yum']['ius-testing-source']['mirrorlist'] = 'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-el6-testing-source&arch=$basearch&protocol=http'
  when 7
    default['yum']['ius-testing-source']['mirrorlist'] = 'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-el7-testing-source&arch=$basearch&protocol=http'
  end
else
  case node['platform_version'].to_i
  when 5
    default['yum']['ius-testing-source']['mirrorlist'] = 'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-centos5-testing-source&arch=$basearch&protocol=http'
  when 6
    default['yum']['ius-testing-source']['mirrorlist'] = 'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-centos6-testing-source&arch=$basearch&protocol=http'
  when 7
    default['yum']['ius-testing-source']['mirrorlist'] = 'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-centos7-testing-source&arch=$basearch&protocol=http'
  end
end
