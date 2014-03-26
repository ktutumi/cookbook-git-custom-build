#
# Cookbook Name:: vim
# Attributes:: default
#
# Copyright 2014, Koichi Tsutsumi
#
# All rights reserved - Do Not Redistribute
#

default[:git][:version] = '1.9.0-1.el6'

default[:git][:host] = 'rpms.itee.jp'

default[:git][:packages] = %W(
      perl-Git-#{node[:git][:version]}.noarch.rpm
      git-#{node[:git][:version]}.x86_64.rpm
    )

