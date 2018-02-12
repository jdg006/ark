class HomeController < ApplicationController
  
  #sets variables that can be accessed in the index section of the home page
  def index
    @items = Item.all
    @loadout = Loadout.first
    @choices = Choice.all
    @console_string = compile_console_string(@loadout)
    @filters = Filter.all
    @active_filters = Filter.where(active: true)
    @filtered_items = filtered_items(@items, @active_filters)
  end
  
  private
  
  #compiles the console command from the list of choices provided by the user
  def compile_console_string(loadout)
    
    console_string = ""
    
    choice_count = 0
    
    loadout.choices.each do |choice|
      choice_count += 1
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
        
        if choice_count == loadout.choices.count
          console_string.chomp!(' | ')
        end
    end
   
    return console_string
          
  end
  
  #creates a list of items to be displayed based on the active filter
  def filtered_items(items, filters)
    filtered_items = []
    items.each do |item|
      filters.each do |filter|
        if item.category == filter.name
          filtered_items.push(item)
        end
      end
    end
    return filtered_items
  end
end
