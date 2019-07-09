require_relative "boot"
require "rails/all"
Bundler.require(*Rails.groups)

module DemoDanghh
  class Application < Rails::Application
    config.load_defaults 5.1
    env_file = File.join(Rails.root, "config", "application.yml")
    YAML.load(File.open(env_file)).each do |key, value|
      ENV[key.to_s] = value
      end if File.exists?(env_file)
    end
end
