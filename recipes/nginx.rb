#
# Cookbook Name:: liersch
# Recipe:: nginx
#

package "nginx" do
    action :upgrade
end

template 'nginx.conf' do
    path     "/etc/nginx/nginx.conf"
    source   "nginx/nginx.conf.erb"
    owner    'root'
    group    'root'
    mode     '0644'
    notifies :reload, 'service[nginx]', :delayed
end
