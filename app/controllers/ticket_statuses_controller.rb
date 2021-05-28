class TicketStatusesController < ApplicationController

    def index
        ticket_statuses = TicketStatus.all
        render json: ticket_statuses
    end

    def create
        ticket_status = TicketStatus.create(ticket_status_params)
        render json: ticket_status
    end

    def show
        ticket_status = TicketStatus.find(params[:id])
        render json: ticket_status
    end

    def update
        ticket_status = TicketStatus.find(params[:id])
        ticket_status.update(ticket_status_params)
        render json: ticket_status
    end

    def destroy
        ticket_status = TicketStatus.find(params[:id])
        ticket_status.destroy
        render json: ticket_status
    end

    private
    def ticket_status_params
        params.require(:favorite).permit(:user_id, :ticket_id, :id)
    end

end
