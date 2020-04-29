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
end
