class ChoiceController < ApplicationController
  
  #creates a new choice
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
  
  #deletes a choice
  def delete
    id = params[:format]
    Choice.where("id = #{id}").first.destroy
    redirect_to home_index_url
  end
  
end
