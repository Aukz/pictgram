class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  protect_from_forgery with: :exception
  include ApplicationHelper
add_flash_types :success, :info, :warning, :danger

before_action :current_user
before_action :logged_in?


end
