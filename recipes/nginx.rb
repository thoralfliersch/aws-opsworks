#
# Cookbook Name:: liersch
# Recipe:: nginx
#

package "nginx" do
    action :upgrade
end

service 'nginx' do
    supports :status => true, :restart => true, :reload => true
    action   :enable
end

template 'nginx.conf' do
    path     "/etc/nginx/nginx.conf"
    source   "nginx/nginx.conf.erb"
    owner    'root'
    group    'root'
    mode     '0644'
    notifies :reload, 'service[nginx]', :delayed
end

template 'sysreport.de' do
    path     "/etc/nginx/sites-available/sysreport.de"
    source   "nginx/sysreport.de.erb"
    owner    'root'
    group    'root'
    mode     '0644'
    notifies :reload, 'service[nginx]', :delayed
end
