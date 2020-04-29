class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist

  # before_action :set_source

  # Can be used to implemented shopping cart
  # Session data not secure
  # No password, no credit card
  # def set_source
  #   session[:source] = params[:q] if params[:q]
  # end
  include SetSource

  # nil object pattern
  # def current_user
  #   super || OpenStruct.new(name: "Guest User", first_name: 'Guest', last_name: 'User', email: 'guest@example.com')
  # end
  include CurrentUserConcern

  # before_action :set_title
  #
  # def set_title
  #   @page_title = "My Portfolio Website"
  # end
  include DefaultPageContent
end
