class PayersController < ApplicationController
  
    def index
        render json: Payer.all.total_balance
    end
    # specific payers point balances
    def show 
        payer = Payer.all.find(params[:id])
        render json: payer.balance,
        # , except: [:id, :updated_at, :created_at, :updated_],
        # include: [transaction: {only: [:points]}], 
        status: :ok
    end
    def create 
       render json: Payer.create!(payer_params), status: :created
    end
    
    private
    def payer_params
        params.permit(:name, :points, :created_at)
    end

end
