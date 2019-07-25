set :stage, :production
set :rails_env, :production
set :branch, "master"
set :deploy_to, "/home/deploy/deploy/demo_danghh"
server "18.141.8.95", user: "deploy", roles: %w{app db web}