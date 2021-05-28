class UserTicketsController < ApplicationController

    def index
        user_ticket = UserTicket.all
        render json: user_ticket
    end

    def create
        user_ticket = UserTicket.create(user_ticket_params)
        render json: user_ticket
    end

    def show
        user_ticket = UserTicket.find(params[:id])
        render json: user_ticket
    end

    def update
      user_ticket = UserTicket.find(params[:id])
      user_ticket.update(user_ticket_params)
      render json: user_ticket
    end

    def destroy
        user_ticket = UserTicket.find(params[:id])
        user_ticket.destroy
        render json: user_ticket
    end

    private
    def user_ticket_params
        params.permit(:user_id, :ticket_id, :id)
    end
end
