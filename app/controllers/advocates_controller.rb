class AdvocatesController < ApplicationController
# before_action :authenticate_advocate!
  def index
  	@advocate = Advocate.all
  end
  def show
    @advocate = Advocate.find(params[:id])
  end
  def new
  	@advocate = Advocate.new
  end
  def edit
    @advocate = Advocate.find(params[:id])
  end

  def create
    @advocate = Advocate.new(advocate_params)
    
    if @advocate.save
      redirect_to @advocate
    else
      render 'new'
  end
  end
  def update
      @advocate = Advocate.find(params[:id])
 
       if @advocate.update(advocate_params)
         redirect_to @advocate
       else
         render 'edit'
      end
    end 
  def destroy
    
    @advocate = Advocate.find(params[:id])
    @advocate.destroy
 
    redirect_to advocates_path
  end
  private
  def advocate_params
    params.require(:advocate).permit(:name)
  end
end
