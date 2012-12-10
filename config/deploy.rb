require "rvm/capistrano"
require "bundler/capistrano"

set :application, "LedLight-Shop"
set :repository,  "git://github.com/MentarioMedia/spree-ledlight.git"
set :user, "root"
set :use_sudo, true  
set :keep_releases, 5
set :deploy_to, "/home/deploy/www/#{application}"



set :scm, :git

role :web, "ledlight-shop.ro"                          # Your HTTP server, Apache/etc
role :app, "ledlight-shop.ro"                          # This may be the same as your `Web` server
role :db,  "ledlight-shop.ro", :primary => true # This is where Rails migrations will run
# role :db,  "your slave db-server here"

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end

