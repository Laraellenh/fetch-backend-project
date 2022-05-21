class UsersController < ApplicationController

   
# show the user's balance and username only
    def show
        user = User.find(params[:id])
        render json: user.user_balance, status: :ok
       
    end
    # create a new user with a certain number of points
    def create
        render json: User.create!(:name, :points)
    end
  
    private

end
