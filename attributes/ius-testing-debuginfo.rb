default['yum']['ius-testing-debuginfo']['repositoryid'] = 'ius-testing-debuginfo'
default['yum']['ius-testing-debuginfo']['enabled'] = false
default['yum']['ius-testing-debuginfo']['managed'] = false
default['yum']['ius-testing-debuginfo']['failovermethod'] = 'priority'
default['yum']['ius-testing-debuginfo']['gpgkey'] = "https://repo.ius.io/RPM-GPG-KEY-IUS-#{node['platform_version'].to_i}"
default['yum']['ius-testing-debuginfo']['gpgcheck'] = true
default['yum']['ius-testing-debuginfo']['description'] = "IUS Community Packages for Enterprise Linux #{node['platform_version'].to_i} - $basearch Testing Debug"
default['yum']['ius-testing-debuginfo']['baseurl'] = "https://repo.ius.io/testing/#{node['platform_version'].to_i}/$basearch/debug"
