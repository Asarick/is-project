module Api
  module V1
    class FarmersController < ApplicationController
      def index
        farmers = Farmer.all
        render json: farmers
      end

      def show
        farmer = Farmer.find(params[:id])
        render json: farmer
      end

      def create
        farmer = Farmer.new(farmer_params)
        if farmer.save
          render json: farmer, status: :created
        else
          render json: { errors: farmer.errors.full_messages }, status: :unprocessable_entity
        end
      end

      private

      def farmer_params
        params.require(:farmer).permit(:name, :email, :phone)
      end
    end
  end
end