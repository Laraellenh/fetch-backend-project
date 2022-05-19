class TransactionsController < ApplicationController

    def index 
    render json:  Transaction.all, except: [:updated_at, :id], status: :ok
    end
    # transaction for a specific payer
    def  show
        t = Transaction.find(params[:id])
        # transaction.payer.name
        render json:  t.payername, except: [ :updated_at]

        #  
    end
    def create
        render json: Transaction.create!(trans_params), status: :created
    end
    # def pointspend
    #     t = Transaction.find(params[:id])
    #     render json: t, only:points, :created_at, includes:  ['payers, payers.name'], status: :ok
    # end
    private
    def trans_params
        params.permit(:user_id, :points, :payee_id, :created_at)
    end


end
