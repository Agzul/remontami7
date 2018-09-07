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

    config.middleware.insert_before(Rack::Runtime, Rack::Rewrite) do
      r301 %r{^(.+)/$}, '$1' # 301 редирект, где в конце ссылок любое количество /
      r301 %r{.*}, 'https://remontami7.herokuapp.com/$1', :if => Proc.new {|rack_env| rack_env['SERVER_NAME'].start_with?('www')}
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.i18n.default_locale = :ru
  end
end
