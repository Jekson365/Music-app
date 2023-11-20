class TicketsController < ApplicationController
  def index
    @bookedTickets = Ticket.where(author_id: current_author.id)
  end
  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy

    redirect_to tickets_path
  end
end
