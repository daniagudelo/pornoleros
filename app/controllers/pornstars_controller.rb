class PornstarsController < ApplicationController
    
    #Show all pornstars action
    def index
        @pornstar = Pornstar.all
    end
    
    #New action for adding a pornstar
    def new
        if current_user.try(:admin?)
            @pornstar = Pornstar.new
        else
            redirect_to root_path
        end
    end
    
    #Create action saves the pornstar into the database
    def create
        @pornstar = Pornstar.new
        if @pornstar.save(pornstar_params)
            flash[:notice] = "Successfully posted pornstar!"
            redirect_to pornstar_path(@pornstar)
        else
            flash[:alert] = "Error posting new pornstar!"
            render :new
        end
    end

    #Edit action retrieves the video and renders the edit page
    def edit
        if current_user.try(:admin?)
        else
            redirect_to root_path
        end
    end
    
    #Update action updates the video with the new information
    def update
        if @pornstar.update_attributes(pornstar_params)
            flash[:notice] = "Successfully updated pornstar!"
            redirect_to pornstar_path(@pornstar)
        else
            flash[:alert] = "Error updating pornstar!"
            render :edit
        end
    end
    
    #The show action renders the individual video after finding the ID
    def show
    end
    
    #The destroy action permanently deletes the video from the database
    def destroy
        if @pornstar.destroy
            flash[:notice] = "Successfully deleted pornstar!"
            redirect_to pornstars_path
        else
            flash[:notice] = "Error updating pornstar!"
        end
    end

    private
    
    def pornstar_params
        params.require(:pornstar).permit(:name)
    end
    
    def find_pornstar
        @pornstar = Pornstar.find(params[:id])
    end
end
