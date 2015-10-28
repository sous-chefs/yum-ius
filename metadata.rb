name 'yum-ius'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache 2.0'
description 'Installs and configures the IUS Community Project Yum Repository'
version '0.4.4'

depends 'yum', '~> 3.2'
depends 'yum-epel'

source_url 'https://github.com/chef-cookbooks/yum-ius' if respond_to?(:source_url)
issues_url 'https://github.com/chef-cookbooks/yum-ius/issues' if respond_to?(:issues_url)

%w(amazon centos fedora oracle redhat scientific).each do |os|
  supports os
end
