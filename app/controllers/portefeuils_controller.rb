class PortefeuilsController < ApplicationController
    def index
        @portfolio_items = Portefeuil.all
    end

    def new 
        @portfolio_item = Portefeuil.new
    end

    def create
        @portfolio_item = Portefeuil.new(params.require(:portefeuil).permit(:title, :subtitle, :body))

        respond_to do |format|
          if @portfolio_item.save
            format.html { redirect_to portefeuils_path, notice: 'portfolio_item was successfully created.' }
          else
            format.html { render :new }
            format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
          end
        end
    end

    def portfolio_params
        params.require(:portfolio_item).permit(:title, :body)
      end
end
  