class WorksController < ApplicationController

  def new
    @works = Work.new
  end

end
