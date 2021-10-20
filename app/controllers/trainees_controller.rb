# frozen_string_literal: true

class TraineesController < ApplicationController
  def index
    @q = Trainee.ransack(params[:q])
    @trainees = @q.result(distinct: true)
  end  
  def new
    @trainee = Trainee.new
  end
  def create
    @trainee = Trainee.new(trainee_params)
    if @trainee.save
      redirect_to trainees_path
    else
      render :new
    end      
  end
  def edit
    @trainee = Trainee.find(params[:id])
  end
  def update
    @trainee = Trainee.find(params[:id])
    @trainee.assign_attributes(trainee_params)
    if @trainee.save
      redirect_to trainees_path
    end
  end  
  def show
    @trainee = Trainee.find(params[:id])
  end  
  private
  def trainee_params
    params.require(:trainee).permit(:first_name, :last_name, :email, :birthdate, :active)
  end
end
