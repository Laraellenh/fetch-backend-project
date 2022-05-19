class TransactionsController < ApplicationController
    # {} = {Transaction.payer.name, Transaction.points, Transaction.created_at}
    def index 
    render json:  Transaction.all, except: [:updated_at, :id], status: :ok
    end
    
    def  show
        t = Transaction.find(params[:id])
        # transaction.payer.name
        render json:   t, except: [:updated_at, :id]
        #  
        # include: [payer: {only:[:name]}], status: :ok
    end
    def create
        render json: Transaction.create!(trans_params), status: :created
    end
 
    private
    def trans_params
        params.permit(:user_id, :points, :payee_id, :created_at)
    end


end
