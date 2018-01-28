class ChoiceController < ApplicationController
  def index
  end

  def show
  end

  def new
    @choice = Choice.new(item_id:  params[:item_id], quantity: params[:choice][:quantity], quality: params[:choice][:quality], blueprint: params[:choice][:blueprint], loadout_id: 1)
    @choice.save
    redirect_to home_index_url
  end
  
  def create
    @choice = Choice.create(item_id: params[:item_id], quantity: params[:choice][:quantity], quality: params[:choice][:quality], blueprint: params[:choice][:blueprint], loadout_id: 1)
    @choice.save
  end

  def edit
  end
  
  def delete
    
  end
  
end
