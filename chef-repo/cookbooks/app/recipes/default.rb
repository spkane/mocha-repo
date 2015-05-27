#
# Cookbook Name:: app
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

include_recipe 'apache2'
include_recipe 'app::mysql_service'

package 'httpd'

service 'httpd' do
  action [:enable, :start]
end

