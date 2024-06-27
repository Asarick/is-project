module Api
  module V1
    class InsurancePackagesController < ApplicationController
      def index
        insurance_packages = InsurancePackage.all
        render json: insurance_packages
      end
    end
  end
end