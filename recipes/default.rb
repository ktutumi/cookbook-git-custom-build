#
# Cookbook Name:: git-custom-build
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

%w(perl-TermReadKey perl-Error).each do |pkg|
  package pkg do
    action :install
  end
end

node[:git][:packages].each do |package|
  remote_file "#{Chef::Config[:file_cache_path]}/#{package}" do
    source "http://#{node[:git][:host]}/#{package}"
  end
end

execute 'install-git-packages' do
  command "rpm -Uvh #{Chef::Config[:file_cache_path]}/{#{node[:git][:packages].join(',')}}"
  action :run
  not_if "rpm -q git-#{node[:git][:version]}"
end
