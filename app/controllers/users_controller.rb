class UsersController < ApplicationController

    # spend oldest points first (created_at min)
    # spending post request
    # reciept adding post request

    def index
        render json: User.all, status: :ok
    end
    def show
        user = User.find(params[:id])
        render json: user.balance, status: :ok
       
    end
    # adds points to user
    def create
        render json: User.create!(:name, :points)
    end
    
    # pointsspent = User.transactions.last.points
    # find oldest points, spend them first,
    # def spending ( pointsspent)
    #     # find user
    #     user = User.find(params[:id])
      
    #     new_total =   user.balance - pointsspent
    #     usefirst = user.transactions.all.order(created_at: :desc)
    #     render json: new_total   

    # end
    private

end
