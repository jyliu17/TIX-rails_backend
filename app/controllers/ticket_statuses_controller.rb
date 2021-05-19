class TicketStatusesController < ApplicationController

    def index
        ticket_status = Ticket_status.all
        render json: ticket_status
    end

    def create
        ticket_status = Ticket_status.create(ticket_status_params)
        render json: ticket_status
    end

    def show
        ticket_status = Ticket_status.find(params[:id])
        render json: ticket_status
    end

    def update
        ticket_status = Ticket_status.find(params[:id])
        ticket_status.update(ticket_status_params)
        render json: ticket_status
    end

    def destroy
        ticket_status = Ticket_status.find(params[:id])
        ticket_status.destroy
        render json: ticket_status
    end

    private
    def ticket_status_params
        params.require(:favorite).permit(:user_id, :ticket_id, :id)
    end

end
