module CurrentUserConcern
    extend ActiveSupport::Conern

    included do 
        before_action :set_current_user
    end 

    def set_current_user
        if session[:user_id]
            @current_user = User.find(session[:user_id])
        end 
    end

    def logged_in
        if @current_user
            render json: {
                logged_in: true, 
                user: @current_user
            }
        else 
            render json: {
                logged_in: false
            }
        end 
    end 


    def logout 
        reset_session
        render json: { status: 200, logged_out: true }
    end 
    
end
