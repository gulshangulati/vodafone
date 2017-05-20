#
# Cookbook:: web
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
file "guls.txt" do
	action:create
content " this is cookbook file"
end
package 'httpd'
service 'httpd' do
action :start
end

template '/var/www/html/index.html' do
source 'index.html.erb'
end
