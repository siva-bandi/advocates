class CasesController < ApplicationController
  def index
  	@case = current_advocate.cases
  end
  def show
    @case = Case.find(params[:id])
  end
  def new
  	@case = Case.new
  end
  def edit
    @case = Case.find(params[:id])
  end

  def create
    @case = current_advocate.cases.new(case_params)

    if @case.save
      # case = Case.where(state_id: prams[:id])
      
      redirect_to @case
    else
      render 'new'
  end
  end
  def update
      @case = Case.find(params[:id])
 
       if @case.update(case_params)
         redirect_to @case
       else
         render 'edit'
      end
    end 
  def destroy
    
    @case = Case.find(params[:id])
    @case.destroy
 
    redirect_to cases_path
  end
  private
  def case_params
    params.require(:case).permit(:advocate_id, :client_name, :state_id, :status, :date)
  end
end
