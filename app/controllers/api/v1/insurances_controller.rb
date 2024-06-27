module Api
  module V1
    class InsurancesController < ApplicationController
      def create
        insurance = Insurance.new(insurance_params)
        if insurance.save
          render json: insurance, status: :created
        else
          render json: { errors: insurance.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def show
        insurance = Insurance.find(params[:id])
        render json: insurance
      end

      private

      def insurance_params
        params.require(:insurance).permit(:farmer_id, :crop_id, :insurance_package_id, :premium_type_id, :acreage, :start_date, :end_date)
      end
    end
  end
end