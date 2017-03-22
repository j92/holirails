class HolidaysController < ApplicationController
  def index
  end

  def new

  end

  def create
    @holiday = Holiday.new(holiday_params)

    @holiday.save
    redirect_to @holiday
  end

  def show
    @holiday = Holiday.find(params[:id])
  end

  private
    def holiday_params
      params.require(:holiday).permit(:start_date, :end_date, :comment)
    end
end
