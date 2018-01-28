class ChoiceController < ApplicationController
  
  def new
    @choice = Choice.new(item_id:  params[:item_id], quantity: params[:choice][:quantity], quality: params[:choice][:quality], blueprint: params[:choice][:blueprint], loadout_id: 1)
    @choice.save
    redirect_to home_index_url
  end
  
  def delete
    id = params[:format]
    Choice.where("id = #{id}").first.destroy
    redirect_to home_index_url
  end
  
end
