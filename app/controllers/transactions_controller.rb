class TransactionsController < ApplicationController

    def index 
    render json:  Transaction.all, except: :updated_at, status: :ok
    end
    
    def  show
        trans = Transaction.find(params[:id])
        render json: trans
    end
    def create
        render json: Transaction.create!(trans_params), status: :created
    end
 
    private
    def trans_params
        params.permit(:user_id, :points, :payee_id, :created_at)
    end


end
