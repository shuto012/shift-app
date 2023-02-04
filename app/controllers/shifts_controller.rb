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
    params.require(:shift).permit(:date, :start_time, :finish_time, :comment).merge(user_id: current_user.id)
  end
  en
end
