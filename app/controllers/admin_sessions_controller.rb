class AdminSessionsController < ApplicationController
    layout false
    def new
    end

    def create
        if login(params[:email], params[:password])
          redirect_back_or_to(root_path)
        else
          render action: :new
        end
    end
    

    def destroy
        logout
        redirect_to(:root)
    end
end
