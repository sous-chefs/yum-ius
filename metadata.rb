name 'yum-ius'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache 2.0'
description 'Installs/Configures yum-ius'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.4.1'

depends 'yum', '~> 3.2'
depends 'yum-epel'
