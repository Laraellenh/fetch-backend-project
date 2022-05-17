class UsersController < ApplicationController

    # spend oldest points first (created_at min)
    # spending post request
    # reciept adding post request

    def index
        render json: User.all, status: :ok
    end
    def show
        user = User.find(params[:id])
        render json: User.all, status: :ok
    end
    # adds points to user
    def create
    render json: User.create!(:name, :points)
    end
    def spend 

    end
    
    private

    def balance 
        
    end

end
