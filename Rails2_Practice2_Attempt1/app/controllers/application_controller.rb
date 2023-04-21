class ApplicationController < ActionController::Base
    #CHRLLL
    def current_user 
        @current_user ||= User.find_by(session_token: session[:session_token])
    end

    helper_method :logged_in?, :current_user

    def require_logged_in
        redirect_to new_session_url unless logged_in?
    end

    def login!(user)
        session[:session_token] = user.reset_session_token!
    end

    def logout!
        current_user.reset_session_token! if logged_in?
        session[:session_token] = nil 
        @current_user = nil 
    end

    def logged_in?
        !!current_user
    end
end