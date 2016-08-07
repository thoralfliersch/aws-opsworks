opsworks_deploy_dir do
    user deploy[:user]
    group deploy[:group]
    path "/var/www/vhosts"
    #path deploy[:deploy_to]
end
