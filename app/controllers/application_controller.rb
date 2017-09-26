class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  helper_method :current_name
  protect_from_forgery with: :exception

  def hello
    if current_name
      render :hello
    else
      redirect_to login_path
      
    end
  end

  def current_name
    session[:name]
  end


end
