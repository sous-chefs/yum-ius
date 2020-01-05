name 'yum-ius'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache-2.0'
description 'Installs and configures the IUS Community Project Yum Repository'
version '3.1.0'

%w(centos oracle redhat scientific).each do |os|
  supports os
end

depends 'yum-epel'

source_url 'https://github.com/chef-cookbooks/yum-ius'
issues_url 'https://github.com/chef-cookbooks/yum-ius/issues'
chef_version '>= 12.15'
