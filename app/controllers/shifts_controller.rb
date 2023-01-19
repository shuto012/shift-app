class ShiftsController < ApplicationController
  
  def new
    @shift = Shift.new
  end

  def create
    @shift = Shift.new(shift_params)
  end

  private
  
  def shift_params
    params.require(:shift).permit(:start_time, :finish_time, :comment)
  end

end
