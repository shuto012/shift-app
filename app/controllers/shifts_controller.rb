class ShiftsController < ApplicationController
  
  def index
  end
  
  def new
    @shift = Shift.new
  end

  def create
    @shift = Shift.new(shift_params)
    @shift.save
    redirect_to new_shift_path
  end

  private
  
  def shift_params
    params.require(:shift).permit(:start_time, :finish_time, :comment).merge(user_id: current_user.id)
  end

end
