class HomeController < ApplicationController
  def index
    @items = Item.all
    @loadout = Loadout.first
    @choices = Choice.all
    @console_string = compile_console_string(@loadout)
    
  end
  
  def delete
    
    id = params[:format]
    Choice.where("id = #{id}").first.destroy
    redirect_to home_index_url
  end
  
  def new
    @choice = Choice.new(item_id:  params[:item_id], quantity: params[:choice][:quantity], quality: params[:choice][:quality], blueprint: params[:choice][:blueprint], loadout_id: 1)
   
  end
  
  def create
    
  end
  
  private
  
  def compile_console_string(loadout)
    
    console_string = ""
    
    
    loadout.choices.each do |choice|
      
      item = Item.where(id: choice.item_id).first
      
      console_string += 'giveitem "'
      console_string += "#{item.blueprint_path}"
      console_string += '" '
      console_string += "#{choice.quantity} #{choice.quality} "
      
      if choice.blueprint == true
        console_string += "1 | "
      else 
        console_string += "0 | "
      end
    end
   
    return console_string
          
  end
end
