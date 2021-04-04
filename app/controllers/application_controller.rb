require './config/environment'


class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, ENV['SESSION_SECRET']
    set :show_exceptions, false
  end

  get "/" do
    erb :welcome
  end

  error 500 do
    redirect '/'
  end

  error 404 do
    redirect '/'
  end

  helpers do
    def logged_in?
      !!current_user
    end

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
  end

  private
  def redirect_if_not_logged_in
    if !logged_in?
      redirect '/login'
    end
  end

  def redirect_if_not_authorized(record)
    if record.user != current_user
        redirect '/'
    end
end

end
