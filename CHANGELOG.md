yum-ius Cookbook CHANGELOG
======================
This file is used to list changes made in each version of the yum-ius cookbook.

v0.4.2 (2015-09-21)

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

v0.4.1 (2015-06-21)
-------------------
- Updating URLs for https and new mirrorlists
- Depending on yum ~> 3.2

v0.4.0 (2014-10-29)
-------------------
- Accounting for differences between RHEL and Centos
- Adding EL7 Support

v0.3.0 (2014-09-11)
-------------------
- Add the yum-epel::default recipe if at least one yum-ius repository managed

v0.2.0 (2014-02-14)
-------------------
- Updating test harness
- Disabling uncommonly used repositories by default


v0.1.4
------
Adding CHANGELOG.md


v0.1.0
------
initial release
