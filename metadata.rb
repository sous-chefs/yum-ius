name 'yum-ius'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache-2.0'
description 'Installs and configures the IUS Community Project Yum Repository'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '3.0.0'

%w(centos oracle redhat scientific).each do |os|
  supports os
end

depends 'yum-epel'

source_url 'https://github.com/chef-cookbooks/yum-ius'
issues_url 'https://github.com/chef-cookbooks/yum-ius/issues'
chef_version '>= 12.14' if respond_to?(:chef_version)
