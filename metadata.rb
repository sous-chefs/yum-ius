name 'yum-ius'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache 2.0'
description 'Installs and configures the IUS Community Project Yum Repository'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.0.0'

depends 'compat_resource', '>= 12.14.6'
depends 'yum-epel'

source_url 'https://github.com/chef-cookbooks/yum-ius'
issues_url 'https://github.com/chef-cookbooks/yum-ius/issues'

%w(centos oracle redhat scientific).each do |os|
  supports os
end

chef_version '>= 12.1'
