class Api::V1::MarketsController < ApplicationController
    def index
      markets = Market.all
      render json: markets
    end
  
    def show
      market = Market.find(params[:id])
      render json: market
    end
  end