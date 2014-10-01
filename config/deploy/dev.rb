set :stage, :dev

server 'localhost',
  user: 'ubuntu',
  roles: %w{web app db},
  port: 22,
  ssh_options: {
    forward_agent: true
  }


set :ruby_version, "ruby-2.1.2"
#set :gemset, "kimptonhotels.com"
set :deploy_to, "/var/www/rails/bootstrap"
#load "deploy/assets" # uncomment if using the asset pipeline

## update only if needed
#set :rails_env, 'remote_development'
#after "deploy", "deploy:migrate"

set :branch, 'master'

#set :rvm_ruby_version, "#{fetch(:ruby_version)}@#{fetch(:gemset)}"

#set :default_env, {
# path: "/usr/local/rvm/gems/#{fetch(:rvm_ruby_version)}/bin:/usr/local/rvm/bin:/usr/local/rvm/rubies/#{fetch(:ruby_version)}/bin:$PATH",
# ruby_version: fetch(:ruby_version),
#  gem_home: "/usr/local/rvm/gems/#{fetch(:rvm_ruby_version)}",
#  gem_path: "/usr/local/rvm/gems/#{fetch(:rvm_ruby_version)}",
#  bundle_path: "/usr/local/rvm/gems/#{fetch(:rvm_ruby_version)}/bin"  # If you are using bundler.
#}


