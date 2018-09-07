require_relative 'boot'

require 'rails/all'
require "rack-rewrite"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Remontami7
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    ENV['RACK_ENV'] ||= 'development'

    if ENV['RACK_ENV'] == 'development'
      ENV['SITE_URL'] = 'localhost:3000'
      else
      ENV['SITE_URL'] = 'remontami7.herokuapp.com'
    end

    config.middleware.insert_before(Rack::Runtime, Rack::Rewrite) do
      r301 %r{^(.+)/$}, '$1' # 301 редирект, где в конце ссылок любое количество /
      r301 %r{.*}, "http://#{ENV['SITE_URL']}$&", :if => Proc.new { |rack_env| rack_env['SERVER_NAME'].start_with?('www')} # 301 редирект, с www на без www


    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.i18n.default_locale = :ru
  end
end
