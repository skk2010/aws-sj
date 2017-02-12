#
# Cookbook Name:: aws-sj
# Recipe:: default
#
# Copyright 2017, ScienceJet
#
# All rights reserved - Do Not Redistribute
#
package 'nginx' do
  action :install
end

service 'nginx' do
  action [ :enable, :start ]
end

gem_package 'bundler'
if node['platform_family'] == 'debian'
  link '/usr/local/bin/bundle' do
    to '/usr/bin/bundle'
  end
else
  link '/usr/local/bin/bundle' do
    to '/usr/local/bin/bundler'
  end
end

