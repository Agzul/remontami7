class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true
  before_action :set_variables

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

  def set_variables
    @default_phone = Contact.where("name = ?", "Ваган")[0].phone

    @default_phone_normal = Contact.where("name = ?", "Ваган")[0].phone
    @default_phone_normal.insert(0, "+").gsub!(" ", "").gsub!("-", "").gsub!("(", "").gsub!(")", "")
    @default_phone_normal[1] = "7"
  end
end
