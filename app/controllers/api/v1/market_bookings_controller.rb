class Api::V1::MarketBookingsController < ApplicationController
    def index
      bookings = MarketBooking.all
      render json: bookings
    end
  
    def show
      booking = MarketBooking.find(params[:id])
      render json: booking
    end
  
    def create
      booking = MarketBooking.new(booking_params)
      if booking.save
        render json: booking, status: :created
      else
        render json: { errors: booking.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    private
  
    def booking_params
      params.require(:market_booking).permit(:market_id, :user_id, :date, :special_requirements)
    end
  end