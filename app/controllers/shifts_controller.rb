class ShiftsController < ApplicationController
  
  def index
    @shift = Shift.new
    
  end

  def create
    Shift.create(shift_params)
    redirect_to root_path
  end

  def show
  end
  
  def edit
  end

  private
  
  def shift_params
    params.require(:shift).permit(:start_time, :finish_time, :comment).merge(user_id: current_user.id)
  end

  def get_week
    wdays = ['(日)','(月)','(火)','(水)','(木)','(金)','(土)']
    
    @week_days = []
    @todays_date = Date.today
    
    shifts = Shift.where(start_time: @todays_date..@todays_date + 6)

    7.times do |x|
      today_shifts = []
      shifts.each do |shift|
        today_shifts.push(shift.start_time) if shift.start_time == @today_date
      end

      wday_num = Date.today.wday + x

      if wday_num >= 7
        wday_num = wday_num - 7
      end

      days = { month: (@todays_date + x).month, date: (@todays_date + x).day, shifts: today_shifts, wday: wdays[wday_num]}
      @week_days.push(days)
    end
  end
end
