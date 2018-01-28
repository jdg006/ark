class HomeController < ApplicationController
  def index
    @items = Item.all
    @loadout = Loadout.first
    @choices = Choice.all
    @console_string = compile_console_string(@loadout)
  end
  
  private
  
  def compile_console_string(loadout)
    
    console_string = ""
    
    loadout.choices.each do |choice|
      
      item = Item.where(id: choice.item_id).first
      number_of_commands = choice.quantity/item.stack_size
      last_command_remainder = choice.quantity % item.stack_size
      
      if number_of_commands == 0
        number_of_commands = 1
      elsif last_command_remainder > 0
        number_of_commands += 1
      end
      
      count = 0
      
      number_of_commands.times do
        count += 1
        
        console_string += 'giveitem "'
        console_string += "#{item.blueprint_path}"
        console_string += '" '
        
        if count == number_of_commands && last_command_remainder > 0
          console_string += "#{last_command_remainder} #{choice.quality} "
        else
          console_string += "#{item.stack_size} #{choice.quality} "
        end
        
        if choice.blueprint == true
          console_string += "1 | "
        else 
          console_string += "0 | "
        end
        
      end
        
    end
   
    return console_string
          
  end
end
