class ShiftsController < ApplicationController
  
  def index
    @shift = Shift.new
    @shifts = Shift.all
    get_days
  end

  def new
    @shift = Shift.new
    @shifts = Shift.all
    get_days
  end

  def create
    @shift = Shift.create(shift_params)
    redirect_to new_shift_path
  end

  def edit
    @shift = Shift.find(params[:id])
  end

  private
  
  def shift_params
    params.require(:shift).permit(:date, :start_time, :finish_time, :comment).merge(user_id: current_user.id)
  end

  def get_days
    @today = Date.today
    @first_date = @today.beginning_of_month
    @last_date = @today.end_of_month
    last_day = @last_date.day

    @days =[]

    last_day.times do |i|
      @days = @days.push(i + 1)
    end
  end
end