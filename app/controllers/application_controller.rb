class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true

  require "browser/aliases"
  Browser::Base.include(Browser::Aliases)
  browser = Browser.new("Some User Agent")
end
