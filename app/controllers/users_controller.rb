class UsersController < ApplicationController

    # spend oldest points first (created_at min)
    # spending post request
    # reciept adding post request

    def index
        render json: User.all, status: :ok
    end
    def show
        user = User.find(params[:id])
        render json: user, status: :ok
    end
    # adds points to user
    def create
        render json: User.create!(:name, :points)
    end
    def balance 
       render json: current_balance= User.find(params[:id]).transactions.pluck(:points).sum
    end
    def spending ( pointsspent)
        # find user
        user = User.find(params[:id])
        include: :transactions
        pointsspent = user.transactions.points
        @balance - pointsspent = @balance
        render json: user, balance
        
        # subtract the amount from a transaction, take from oldest points first, return new setBalance
        
    end
    
    private

end
