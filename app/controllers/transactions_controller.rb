class TransactionsController < ApplicationController
# the spend points route
    def spend 
        render json:  Transaction.all.points_call,
        status: :ok
    end
    def index
        t = Transaction.all
        render json:  t.all_payers, except: [ :updated_at]

    end
    def show
       render json: Transaction.find(params[:id])
    end
    def create
        render json: Transaction.create!(trans_params), status: :created
    end
    # def pointspend
    #     t = Transaction.find(params[:id])
    #     render json: t.points_call
    # end
    private
    def trans_params
        params.permit(:user_id, :points, :payee_id, :created_at)
    end


end
