name              'yum-ius'
maintainer        'Sous Chefs'
maintainer_email  'help@sous-chefs.org'
license           'Apache-2.0'
description       'Installs and configures the IUS Community Project Yum Repository'
version           '3.2.1'
source_url        'https://github.com/sous-chefs/yum-ius'
issues_url        'https://github.com/sous-chefs/yum-ius/issues'
chef_version      '>= 12.15'

depends 'yum-epel'

supports 'centos'
supports 'oracle'
supports 'redhat'
supports 'scientific'
