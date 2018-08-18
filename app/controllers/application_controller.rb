class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  require "browser/aliases"
  Browser::Base.include(Browser::Aliases)

  browser = Browser.new("Some User Agent")
end
