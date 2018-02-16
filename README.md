# yum-ius Cookbook

[![Build Status](https://travis-ci.org/chef-cookbooks/yum-ius.svg?branch=master)](http://travis-ci.org/chef-cookbooks/yum-ius) [![Cookbook Version](https://img.shields.io/cookbook/v/yum-ius.svg)](https://supermarket.chef.io/cookbooks/yum-ius)

The yum-ius cookbook takes over management of the default repositoryids that ship with CentOS systems. It allows attribute manipulation of `ius`, `ius-debuginfo`, `ius-source`, `ius-archive`, `ius-archive-debuginfo`, `ius-archive-source`, `ius-testing`, `ius-testing-debuginfo`, `ius-testing-source`, `ius-dev`, `ius-dev-debuginfo`, `ius-dev-source`

## Requirements

### Platforms

- RHEL/CentOS and derivatives

### Chef

- Chef 12.14+

### Cookbooks

- yum-epel

## Attributes

The following attributes are set by default

```ruby
default['yum']['ius']['repositoryid'] = 'ius'
default['yum']['ius']['enabled'] = true
default['yum']['ius']['managed'] = true
default['yum']['ius']['failovermethod'] = 'priority'
default['yum']['ius']['gpgkey'] = 'http://mirror.its.dal.ca/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius']['gpgcheck'] = true
default['yum']['ius']['description'] = 'IUS Community Packages for Enterprise Linux 6 - $basearch'
default['yum']['ius']['mirrorlist'] = 'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-el6&arch=$basearch&protocol=http'
```

```ruby
default['yum']['ius-debuginfo']['repositoryid'] = 'ius-debuginfo'
default['yum']['ius-debuginfo']['enabled'] = false
default['yum']['ius-debuginfo']['managed'] = false
default['yum']['ius-debuginfo']['failovermethod'] = 'priority'
default['yum']['ius-debuginfo']['gpgkey'] = 'http://mirror.its.dal.ca/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius-debuginfo']['gpgcheck'] = true
default['yum']['ius-debuginfo']['description'] = 'IUS Community Packages for Enterprise Linux 6 - $basearch Debug'
default['yum']['ius-debuginfo']['mirrorlist'] = 'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-el6-debuginfo&arch=$basearch&protocol=http'
```

```ruby
default['yum']['ius-source']['repositoryid'] = 'ius-source'
default['yum']['ius-source']['enabled'] = false
default['yum']['ius-source']['managed'] = false
default['yum']['ius-source']['failovermethod'] = 'priority'
default['yum']['ius-source']['gpgkey'] = 'http://mirror.its.dal.ca/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius-source']['gpgcheck'] = true
default['yum']['ius-source']['description'] = 'IUS Community Packages for Enterprise Linux 6 - $basearch Source'
default['yum']['ius-source']['mirrorlist'] = 'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-el6-source&arch=$basearch&protocol=http'
```

```ruby
default['yum']['ius-archive']['repositoryid'] = 'ius-archive'
default['yum']['ius-archive']['enabled'] = false
default['yum']['ius-archive']['managed'] = false
default['yum']['ius-archive']['failovermethod'] = 'priority'
default['yum']['ius-archive']['gpgkey'] = 'http://mirror.its.dal.ca/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius-archive']['gpgcheck'] = true
default['yum']['ius-archive']['description'] = 'IUS Community Packages for Enterprise Linux 6 - $basearch Archive'
default['yum']['ius-archive']['mirrorlist'] = 'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-el6-archive&arch=$basearch&protocol=http'
```

```ruby
default['yum']['ius-archive-debuginfo']['repositoryid'] = 'ius-archive-debuginfo'
default['yum']['ius-archive-debuginfo']['enabled'] = false
default['yum']['ius-archive-debuginfo']['managed'] = false
default['yum']['ius-archive-debuginfo']['failovermethod'] = 'priority'
default['yum']['ius-archive-debuginfo']['gpgkey'] = 'http://mirror.its.dal.ca/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius-archive-debuginfo']['gpgcheck'] = true
default['yum']['ius-archive-debuginfo']['description'] = 'IUS Community Packages for Enterprise Linux 6 - $basearch Archive Debug'
default['yum']['ius-archive-debuginfo']['mirrorlist'] = 'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-el6-archive-debuginfo&arch=$basearch&protocol=http'
```

```ruby
default['yum']['ius-archive-source']['repositoryid'] = 'ius-archive-source'
default['yum']['ius-archive-source']['enabled'] = false
default['yum']['ius-archive-source']['managed'] = false
default['yum']['ius-archive-source']['failovermethod'] = 'priority'
default['yum']['ius-archive-source']['gpgkey'] = 'http://mirror.its.dal.ca/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius-archive-source']['gpgcheck'] = true
default['yum']['ius-archive-source']['description'] = 'IUS Community Packages for Enterprise Linux 6 - $basearch Archive Source'
default['yum']['ius-archive-source']['mirrorlist'] = 'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-el6-archive-source&arch=$basearch&protocol=http'
```

```ruby
default['yum']['ius-testing']['repositoryid'] = 'ius-testing'
default['yum']['ius-testing']['enabled'] = false
default['yum']['ius-testing']['managed'] = false
default['yum']['ius-testing']['failovermethod'] = 'priority'
default['yum']['ius-testing']['gpgkey'] = 'http://mirror.its.dal.ca/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius-testing']['gpgcheck'] = true
default['yum']['ius-testing']['description'] = 'IUS Community Packages for Enterprise Linux 6 - $basearch Testing'
default['yum']['ius-testing']['mirrorlist'] = 'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-el6-testing&arch=$basearch&protocol=http'
```

```ruby
default['yum']['ius-testing-debuginfo']['repositoryid'] = 'ius-testing-debuginfo'
default['yum']['ius-testing-debuginfo']['enabled'] = false
default['yum']['ius-testing-debuginfo']['managed'] = false
default['yum']['ius-testing-debuginfo']['failovermethod'] = 'priority'
default['yum']['ius-testing-debuginfo']['gpgkey'] = 'http://mirror.its.dal.ca/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius-testing-debuginfo']['gpgcheck'] = true
default['yum']['ius-testing-debuginfo']['description'] = 'IUS Community Packages for Enterprise Linux 6 - $basearch Testing Debug'
default['yum']['ius-testing-debuginfo']['mirrorlist'] = 'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-el6-testing-debuginfo&arch=$basearch&protocol=http'
```

```ruby
default['yum']['ius-testing-source']['repositoryid'] = 'ius-testing-source'
default['yum']['ius-testing-source']['enabled'] = false
default['yum']['ius-testing-source']['managed'] = false
default['yum']['ius-testing-source']['failovermethod'] = 'priority'
default['yum']['ius-testing-source']['gpgkey'] = 'http://mirror.its.dal.ca/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius-testing-source']['gpgcheck'] = true
default['yum']['ius-testing-source']['description'] = 'IUS Community Packages for Enterprise Linux 6 - $basearch Testing Source'
default['yum']['ius-testing-source']['mirrorlist'] = 'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-el6-testing-source&arch=$basearch&protocol=http'
```

```ruby
default['yum']['ius-dev']['repositoryid'] = 'ius-dev'
default['yum']['ius-dev']['enabled'] = false
default['yum']['ius-dev']['managed'] = false
default['yum']['ius-dev']['failovermethod'] = 'priority'
default['yum']['ius-dev']['gpgkey'] = 'http://mirror.its.dal.ca/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius-dev']['gpgcheck'] = true
default['yum']['ius-dev']['description'] = 'IUS Community Packages for Enterprise Linux 6 - $basearch Dev'
default['yum']['ius-dev']['mirrorlist'] = 'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-el6-dev&arch=$basearch&protocol=http'
```

```ruby
default['yum']['ius-dev-debuginfo']['repositoryid'] = 'ius-dev-debuginfo'
default['yum']['ius-dev-debuginfo']['enabled'] = false
default['yum']['ius-dev-debuginfo']['managed'] = false
default['yum']['ius-dev-debuginfo']['failovermethod'] = 'priority'
default['yum']['ius-dev-debuginfo']['gpgkey'] = 'http://mirror.its.dal.ca/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius-dev-debuginfo']['gpgcheck'] = true
default['yum']['ius-dev-debuginfo']['description'] = 'IUS Community Packages for Enterprise Linux 6 - $basearch Dev Debug Info'
default['yum']['ius-dev-debuginfo']['mirrorlist'] = 'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-el6-dev-debuginfo&arch=$basearch&protocol=http'
```

```ruby
default['yum']['ius-dev-source']['repositoryid'] = 'ius-dev-source'
default['yum']['ius-dev-source']['enabled'] = false
default['yum']['ius-dev-source']['managed'] = false
default['yum']['ius-dev-source']['failovermethod'] = 'priority'
default['yum']['ius-dev-source']['gpgkey'] = 'http://mirror.its.dal.ca/ius/IUS-COMMUNITY-GPG-KEY'
default['yum']['ius-dev-source']['gpgcheck'] = true
default['yum']['ius-dev-source']['description'] = 'IUS Community Packages for Enterprise Linux 6 - $basearch Dev Source'
default['yum']['ius-dev-source']['mirrorlist'] = 'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-el6-dev-source&arch=$basearch&protocol=http'
```

## Recipes

- default - Walks through node attributes and feeds a yum_resource
- parameters. The following is an example a resource generated by the
- recipe during compilation.

```ruby
  yum_repository 'ius' do
    mirrorlist 'https://mirrors.iuscommunity.org/mirrorlist/?repo=ius-el6&arch=$basearch&protocol=http'
    description 'IUS Community Packages for Enterprise Linux 6 - $basearch'
    enabled true
    gpgcheck true
    gpgkey 'http://mirror.its.dal.ca/ius/IUS-COMMUNITY-GPG-KEY'
  end
```

## Usage Example

To disable the `ius` repository through a Role or Environment definition

```ruby
default_attributes(
  :yum => {
    :ius => {
      :enabled => {
        false
       }
     }
   }
 )
```

Uncommonly used repositoryids are not managed by default. This is speeds up integration testing pipelines by avoiding yum-cache builds that nobody cares about. To enable the `ius-testing` repository with a wrapper cookbook, place the following in a recipe:

```ruby
node.default['yum']['ius-tesing']['managed'] = true
node.default['yum']['ius-tesing']['enabled'] = true
include_recipe 'yum-ius'
```

## More Examples

Point the base and debuginfo repositories at an internally hosted server.

```ruby
node.default['yum']['ius']['enabled'] = true
node.default['yum']['ius']['mirrorlist'] = nil
node.default['yum']['ius']['baseurl'] = 'https://internal.example.com/centos/6/os/x86_64'
node.default['yum']['ius']['sslverify'] = false
node.default['yum']['ius-debuginfo']['enabled'] = true
node.default['yum']['ius-debuginfo']['mirrorlist'] = nil
node.default['yum']['ius-debuginfo']['baseurl'] = 'https://internal.example.com/centos/6/updates/x86_64'
node.default['yum']['ius-debuginfo']['sslverify'] = false

include_recipe 'yum-ius'
```

## License & Authors

**Author:** Cookbook Engineering Team ([cookbooks@chef.io](mailto:cookbooks@chef.io))

**Copyright:** 2011-2016, Chef Software, Inc.

```
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
