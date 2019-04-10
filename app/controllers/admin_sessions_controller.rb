class AdminSessionsController < ApplicationController
    layout false
    def new
    end

    def create
        if login(params[:username], params[:password])
            redirect_back_or_to(root_path, notice: "Zalogowany jako administrator.")
        else
            render action: :new
        end
    end

    def destroy
        logout
        redirect_to(:root, notice: "Logged out!")
    end
end
