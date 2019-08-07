class ApplicationController < ActionController::Base

    helper_method :current_user
    helper_method :logged_in?
    helper_method :logout
    helper_method :log_in_user!

    def current_user
        #return current user
        @current_user ||= User.find_by(session_token: session[:session_token])
    end

    def logged_in?
        #return a boolean indicating whether someone is signed in
        !!current_user
    end

    def log_in_user!(user)
        #reset the users session token and cookie
        session[:session_token] = user.reset_session_token!
    end

    def logout
        current_user.reset_session_token! if logged_in?
        session[:session_token] = nil
        @current_user = nil
    end
end
