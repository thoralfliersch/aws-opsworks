#opsworks_deploy_dir do
    #user deploy[:user]
    #group deploy[:group]
    #path "/var/www/vhosts"
    #path deploy[:deploy_to]
#end

directory '/var/www/vhosts' do
  owner deploy[:user]
  group deploy[:group]
  mode '0755'
  action :create
end
