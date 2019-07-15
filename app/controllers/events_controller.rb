class EventsController < ApplicationController
  def index
    @events = Event.all.order("start_date ASC")
  end

  

  def new
    @event = Event.new
  end

  def create
    event = Event.create(event_params)
    p params
    event.user_id = current_user.id
    if event.save
      redirect_to root_path
    else
      flash[:errors] = event.errors.messages
    end

  end

  def show
    @event = Event.find(params[:id])
    
  end
  
  def edit
    @event = Event.find(params[:id])
  end


  def update
    event = Event.find(params[:id])
    event.update(event_params)
    redirect_to event_path(event)
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
    redirect_to events_path
  end
  

  private

  def event_params
      params.require(:event).permit(:name, :description, :start_date, :end_date, :start_time, :end_time, :price, :event_phone, :website, :image_url, :user_id)
  end


end
