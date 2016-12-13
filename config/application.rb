require File.expand_path('../boot', __FILE__)

require 'rails/all'

if defined?(Bundler)
  # If you precompile assets before deploying to production, use this line
  Bundler.require(*Rails.groups(:assets => %w(development test)))
  # If you want your assets lazily compiled in production, use this line
  # Bundler.require(:default, :assets, Rails.env)
end

module Bot
  class Application < Rails::Application
    config.autoload_paths += Dir[Rails.root.join('app', 'models', '{**}'), Rails.root.join('lib')]
    config.action_dispatch.trusted_proxies = "127.0.0.1"
    #config.wash_out[:catch_xml_errors] = true
  end
end