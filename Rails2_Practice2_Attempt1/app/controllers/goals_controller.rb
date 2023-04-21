class GoalsController < ApplicationController
    before_action :require_logged_in, only:[:create, :destroy]
    
    def new 
        @goal = Goal.new 
        render :new 
    end
    
    def create 
        # if !logged_in?
        #     redirect_to new_session_url
        # end

        @goal = Goal.new(goal_params)
        @goal.user = current_user

        if @goal 
            redirect_to user_url(@goal.user)
        else
            flash.now[:errors] = @goal.errors.full_messages
            render :new
        end

        redirect_to new_session_url
    end 

    def destroy 
    end

    def goal_params
        params.require(:goal).permit(:name, :details, :status)
    end

end
