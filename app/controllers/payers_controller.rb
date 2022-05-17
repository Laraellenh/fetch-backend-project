class PayersController < ApplicationController

    def index
        render json: Payer.all, status: :ok
    end
    def show 
        payer = Payer.all.find(params[:id])
        render json: payer, status: :ok
    end
    def create 
        Payer.create!(payer_params), status: :created
    end
    def destroy
        Payer.find(params[:username]).delete
        head :no_content
    end
    private
    def payer_params
        params.permit(:name, :points, :created_at)
    end

end
