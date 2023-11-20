class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params.require(:event).permit(
      :title,
      :date,
      :ticket_price,
      :location,
    ))
    @event.author_id = current_author.id

    if @event.save
      redirect_to events_path
    else
      render "new"
    end
  end
  def show

  end
  def index
    @events = Event.all
  end
  def myevents
    @events = Author.find(params[:id]).events
  end
  def destroy
    @event = Event.find(params[:id])
    if @event.destroy
      flash[:notice] = "Event Canceled!"
    end
  end


  def random
    @currentEvent = Event.find(params[:event])

    # @currentEvent.user_id = current_author.id

    if Ticket.create(event_id: @currentEvent[:id],author_id: current_author.id)
      p "**************saved*************"
      flash[:notice] = "booked!"
      redirect_to events_path
    else
      render "index"
    end

  end

end
