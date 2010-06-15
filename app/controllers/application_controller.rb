# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  protected
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  def current_user
    @current_user ||= session[:user_id] && User.find(session[:user_id])
  end

  def logged_in?
    nil != current_user
  end
  helper_method :logged_in?, :current_user

  def require_user
    redirect_to login_path unless current_user
  end

  def self.require_user(opts = {})
    before_filter :require_user, opts
  end
end
