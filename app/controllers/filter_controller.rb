class FilterController < ApplicationController
    
    #changes filter active status to false if it is true and true if it is false
    #uses parameter [:format] where format is the id of the selected filter
    def edit
        
        activated_filter = Filter.where(id: params[:format]).first
        filters = Filter.all
        filters.each do |filter|
            filter.assign_attributes({:active => false})
            if filter.save
                logger.debug "filter successfully updated: #{filter.attributes.inspect}"
            end
        end
        
        if activated_filter.name != "All"
            activated_filter.assign_attributes({:active => true})
            if activated_filter.save
                logger.debug "filter successfully updated: #{activated_filter.attributes.inspect}"
            end
        end
        
        redirect_to home_index_url
    end
end
