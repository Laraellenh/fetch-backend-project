class UsersController < ApplicationController

    # spend oldest points first (created_at min)
    # spending post request
    # reciept adding post request

    def index
        render json: User.all, except: :updated_at, status: :ok
    end
    def show
        user = User.find(params[:id])
        render json: user,
        # include: [transaction: {only: [:points]}],
        # (only: [:name])
        status: :ok
        #  include: [transaction: {only: [:points]}], status: :ok
    end
    # adds points to user
    def create
        render json: User.create!(:name, :points)
    end
    def balance 
        render json: User.find(params[:id]).transactions.pluck(:points).sum
    end
    # pointsspent = User.transactions.last.points
    def spending ( pointsspent)
        # find user
        user = User.find(params[:id])
        balance = user.transactions.all.pluck(:points).sum
        new_total = balance - pointsspent
        usefirst = user.transactions.all.order(created_at: :desc)
        render json: new_total   

    end
    private

end
