class ApplicationController < ActionController::Base

  helper_method :current_author, :logged_in?,:check_admin?

  def current_author

    current_author ||= Author.find(session[:author_id]) if session[:author_id]
  end
  def check_admin?
    !!current_author.admin
  end
  def logged_in?
    !!current_author
  end


end
