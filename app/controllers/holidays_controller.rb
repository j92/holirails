class HolidaysController < ApplicationController
  def index
    @holidays = Holiday.all
  end

  def new

  end

  def edit
    @holiday = Holiday.find(params[:id])
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
      params.require(:holiday).permit(:start_date, :end_date, :duration, :comment)
    end
end
