name 'yum-ius'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache 2.0'
description 'Installs and configures the IUS Community Project Yum Repository'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.4.6'

depends 'yum', '~> 3.2'
depends 'yum-epel'

source_url 'https://github.com/chef-cookbooks/yum-ius' if respond_to?(:source_url)
issues_url 'https://github.com/chef-cookbooks/yum-ius/issues' if respond_to?(:issues_url)

%w(centos oracle redhat scientific).each do |os|
  supports os
end

chef_version '>= 11' if respond_to?(:chef_version)
