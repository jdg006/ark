class FilterController < ApplicationController
    
    def edit
        
        filters = Filter.where(id: params[:filter_id])
        
        filters.each do |filter|
        
            if filter.active == true
                filter.assign_attributes({:active => false})
            else
                filter.assign_attributes({:active => true})
            end
            
            filter.save
        
        end
        
        redirect_to home_index_url
    end
end
