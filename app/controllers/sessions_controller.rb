class SessionsController < ApplicationController
    include CurrentUserConcern

    def create
        @user = User.find_by(name: params[:user][:email]) || Host.find_by(name: params[:user][:email])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            render json: {
                status: :created,
                logged_in: true,
                user: user
            }
        else 
            render json: { status: 401 }
        end 
    end 

    def logged_in
        current_user
    end 

end
  