class ProfilesController < ApplicationController
  
  def index
    @profiles = Profile.search(params)
    
    respond_to do |format|
      format.html #index.html.erb
      format.json { render :json => @profiles }
    end
  end




def show
  @profile = Profile.find(params[:id])
  
  respond_to do |format|
    format.html #index.html.erb
    format.json { render :json => @profiles }
  end
end


end
