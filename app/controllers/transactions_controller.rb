class TransactionsController < ApplicationController

    def index 
    render json:  Transaction.all, except: :updated_at, status: :ok
    end
    
    def payer_point_balances 
        render json:  Transaction.all.where({payer_id: payer}), include: :user, only: [:user.name, :points], status: :ok
    end
    def  show
        trans = Transaction.find(params[:id])
        render json: trans
    end
    def create
        render json: Transaction.create!(trans_params), status: :created
    end
    # def user_data_spend (user_id)
    #   t= Transaction.all.where(user_id: user[:user_id])
    #     t.points
       
        
    # render json: total_points, include: :user.username
    # end


    private
    def trans_params
        params.permit(:user_id, :points, :payee_id, :created_at)
    end
    # def balance 
    #     Transactions.all.find(params[:user_id])
    # end

end
