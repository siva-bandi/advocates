class StatesController < ApplicationController
  def index
  	@state = current_advocate.states
  end
  def show
    @state = State.find(params[:id])
    @cases = Case.where(state_id: @state.id, advocate_id: current_advocate.id)
  end
  def new
  	@state = State.new
  end
  def edit
    @state = State.find(params[:id])
  end

  def create
    AdovocatesState.create!(state_id:  params[:state][:state_id], advocate_id: current_advocate.id)
 
    redirect_to states_path
  end

  def update
      @state = State.find(params[:id])
 
       if @state.update(state_params)
         redirect_to @state
       else
         render 'edit'
      end
  end 

  def destroy
    @state = State.find(params[:id])
    @state.destroy
 
    redirect_to states_path
  end
  private
  def state_params
    params.require(:state).permit(:name)
  end
end
