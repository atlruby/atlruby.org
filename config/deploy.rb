set :ssh_options, {:forward_agent => true }
server 'atlruby.managedmachine.com', :app, :web, :db, :primary => true
