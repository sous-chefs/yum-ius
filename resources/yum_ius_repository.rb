unified_mode true

provides :yum_ius_repository

property :repo_name, String, name_property: true
property :enabled, [true, false], default: true
property :include_epel, [true, false], default: true
property :gpgcheck, [true, false], default: true
property :failovermethod, String, default: 'priority'
property :baseurl, String
property :gpgkey, String
property :description, String
property :mirrorlist, String
property :sslverify, [true, false]
property :sslcacert, String
property :sslclientcert, String
property :sslclientkey, String
property :proxy, String
property :proxy_username, String
property :proxy_password, String
property :username, String
property :password, String
property :options, Hash, default: {}

action_class do
  def ius_version
    node['platform_version'].to_i
  end

  def default_gpgkey
    "https://repo.ius.io/RPM-GPG-KEY-IUS-#{ius_version}"
  end

  def repo_base_path
    case new_resource.repo_name
    when 'ius' then "#{ius_version}/$basearch"
    when 'ius-debuginfo' then "#{ius_version}/$basearch/debug"
    when 'ius-source' then "#{ius_version}/src"
    when 'ius-archive' then "archive/#{ius_version}/$basearch"
    when 'ius-archive-debuginfo' then "archive/#{ius_version}/$basearch/debug"
    when 'ius-archive-source' then "archive/#{ius_version}/src"
    when 'ius-testing' then "testing/#{ius_version}/$basearch"
    when 'ius-testing-debuginfo' then "testing/#{ius_version}/$basearch/debug"
    when 'ius-testing-source' then "testing/#{ius_version}/src"
    else
      raise "Unknown IUS repository: #{new_resource.repo_name}"
    end
  end

  def default_baseurl
    "https://repo.ius.io/#{repo_base_path}"
  end

  def default_description
    base_desc = case new_resource.repo_name
                when 'ius' then 'IUS Community Packages for Enterprise Linux'
                when 'ius-debuginfo' then 'IUS Community Packages for Enterprise Linux - Debug'
                when 'ius-source' then 'IUS Community Packages for Enterprise Linux - Source'
                when 'ius-archive' then 'IUS Community Packages for Enterprise Linux - Archive'
                when 'ius-archive-debuginfo' then 'IUS Community Packages for Enterprise Linux - Archive Debug'
                when 'ius-archive-source' then 'IUS Community Packages for Enterprise Linux - Archive Source'
                when 'ius-testing' then 'IUS Community Packages for Enterprise Linux - Testing'
                when 'ius-testing-debuginfo' then 'IUS Community Packages for Enterprise Linux - Testing Debug'
                when 'ius-testing-source' then 'IUS Community Packages for Enterprise Linux - Testing Source'
                else
                  'IUS Community Packages for Enterprise Linux'
                end
    "#{base_desc} #{ius_version} - $basearch"
  end
end

action :create do
  include_recipe 'yum-epel' if new_resource.include_epel && !run_context.loaded_recipe?('yum-epel')

  yum_repository new_resource.repo_name do
    description new_resource.description || default_description
    baseurl new_resource.baseurl || default_baseurl
    mirrorlist new_resource.mirrorlist
    gpgkey new_resource.gpgkey || default_gpgkey
    gpgcheck new_resource.gpgcheck
    enabled new_resource.enabled
    failovermethod new_resource.failovermethod
    sslverify new_resource.sslverify
    sslcacert new_resource.sslcacert
    sslclientcert new_resource.sslclientcert
    sslclientkey new_resource.sslclientkey
    proxy new_resource.proxy
    proxy_username new_resource.proxy_username
    proxy_password new_resource.proxy_password
    username new_resource.username
    password new_resource.password
    options new_resource.options
    action :create
  end
end

action :delete do
  yum_repository new_resource.repo_name do
    action :remove
  end
end
