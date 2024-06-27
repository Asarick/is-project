module Api
  module V1
    class CropsController < ApplicationController
      def index
        crops = Crop.all
        render json: crops
      end
    end
  end
end