class SessionsController < ApplicationController

    def app
        @message = Message.new
        @messages = Message.all
    end

  

    def new
    end
    
      def create
        user = User.find_by(username: params[:session][:username])
        if user && user.authenticate(params[:session][:password])
          session[:user_id] = user.id
          flash[:success] = "You have successfully logged in"
          redirect_to app_path
        else
          flash.now[:error] = "There was something wrong with your login information"
          render 'new'
        end
      end
    
      def destroy
        session[:user_id] = nil
        flash[:success] = "You have successfully logged out"
        redirect_to app_path
      end
      
    
    end
  

  