class ChoiceController < ApplicationController
  
  #creates a new choice using parameters [:choice][:quantity], [:choice][:quality] and [:item_id]
  def new
    quantity = params[:choice][:quantity]
    quality = params[:choice][:quality]
    item = Item.where("id = #{params[:item_id]}").first
    
    if quantity == ""
      quantity = item.stack_size
    end
    
    if quality == ""
      quality = 100
    end
    
    @choice = Choice.new(item_id: params[:item_id], quantity: quantity, quality: quality, blueprint: params[:choice][:blueprint], loadout_id: 1)
    @choice.save
    redirect_to home_index_url
  end
  
  #deletes a choice using parameters [:format] where format is the item_id of the choice to be deleted
  def delete
    id = params[:format]
    Choice.where("id = #{id}").first.destroy
    redirect_to home_index_url
  end
  
end
