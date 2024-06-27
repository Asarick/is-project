module Api
  module V1
    class PremiumTypesController < ApplicationController
      def index
        premium_types = PremiumType.all
        render json: premium_types
      end
    end
  end
end