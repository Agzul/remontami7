class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true

  require "browser/aliases"
  Browser::Base.include(Browser::Aliases)
  browser = Browser.new("Some User Agent")

  def deny_access
    if current_user && current_user.admin
      return 0
    else
      redirect_to root_path
      flash[:danger] = 'Недостаточно прав'
      return -1
    end
  end
end
