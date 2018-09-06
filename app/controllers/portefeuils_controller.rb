class PortefeuilsController < ApplicationController
    def index
        @portfolio_items = Portefeuil.all
    end
end
