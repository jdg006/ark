class FilterController < ApplicationController
    
    #changes filter active status to false if it is true and true if it is false
    def edit
        
        activated_filter = Filter.where(id: params[:format]).first
        filters = Filter.all
        filters.each do |filter|
            filter.assign_attributes({:active => false})
            filter.save
        end
        
        if activated_filter.name != "All"
            activated_filter.assign_attributes({:active => true})
            activated_filter.save
        end
        
        redirect_to home_index_url
    end
end
