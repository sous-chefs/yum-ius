# yum-ius Cookbook CHANGELOG

This file is used to list changes made in each version of the yum-ius cookbook.

## 3.2.7 - *2023-07-10*

## 3.2.6 - *2023-05-17*

## 3.2.5 - *2023-05-04*

- Fix CI

## 3.2.4 - *2023-02-14*

- Add renovate.json

## 3.2.3 - *2023-02-14*

- Remove Delivery

## 3.2.2 - *2021-08-29*

- Standardise files with files in sous-chefs/repo-management

## 3.2.1 - *2021-06-01*

- Standardise files with files in sous-chefs/repo-management

## 3.2.0 - *2021-03-03*

- Sous Chefs adoption
- Various style fixes

## 3.1.0 (2019-10-17)

- Updated all the repos to use the new IUS CDN system. This greatly simplifies our attribute setup and makes sure this cookbook continues to work with the latest mirror setup.
- [@gsdevme](https://github.com/gsdevme)
- Resolve Cookstyle 5.8 warnings - [@tas50](https://github.com/tas50)
- Remove references to CentOS 5 - [@ramereth](https://github.com/ramereth)
- Removed the various *dev* repos which don't seem to exist anymore - [@ramereth](https://github.com/ramereth)
- Fix all other active upstream repos with new baseurl for CDN - [@ramereth](https://github.com/ramereth)

## 3.0.0 (2018-02-16)

- Require Chef 12.14+ and remove the compat_resource dep

## 2.2.0 (3.2.0 - *2021-03-03*)

- Remove use of releasever to eliminate centos-release dependency.
- Add warning for use of EL 5 variants as IUS is ending support as of March 31, 2017 following the RHEL EOL of RHEL 5.
- Update chefspecs to avoid deprecation warnings

## 2.1.0 (2016-12-22)

- Allow the use of any valid property via attributes
- Depend on the latest compat_resource cookbook
- Cookstyle fixes

## 2.0.0 (2016-11-26)

- Replace yum dependency with compat_resource
- Add inspec integration test

## 1.0.0 (2016-09-06)

- Testing updates
- Add chef_version metadata
- Remove support for Chef 11

## v0.4.6 (2016-04-27)

- Remove support for fedora / amazon from metadata as they are not actually supported

## v0.4.5 (2015-11-30)

- Fixed attributes with a false value being skipped

## v0.4.4 (2015-10-28)

- Fixing logic bug around managed attribute

## v0.4.3 (2015-10-28)

- Fixing Chef 13 nil property deprecation warnings

## v0.4.2 (2015-09-21)

- Added Chef standard Rubocop file and resolved all warnings
- Updated platforms in Kitchen CI config
- Add supported platforms to the metadata
- Added Chef standard chefignore and .gitignore files
- Updated and expanded development dependencies in the Gemfile
- Added contributing, testing, and maintainers docs
- Added platform requirements to the readme
- Added Travis and cookbook version badges to the readme
- Update Chefspec to 4.X format
- Convert all hash rockets to the Ruby 1.9+ hash format

## v0.4.1 (2015-06-21)

- Updating URLs for https and new mirrorlists
- Depending on yum ~> 3.2

## v0.4.0 (2014-10-29)

- Accounting for differences between RHEL and Centos
- Adding EL7 Support

## v0.3.0 (2014-09-11)

- Add the yum-epel::default recipe if at least one yum-ius repository managed

## v0.2.0 (2014-02-14)

- Updating test harness
- Disabling uncommonly used repositories by default

## v0.1.4

- Adding CHANGELOG.md

## v0.1.0

- initial release
