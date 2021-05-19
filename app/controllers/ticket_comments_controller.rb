class TicketCommentsController < ApplicationController

    def index
        ticket_comment = Ticket_comment.all
        render json: ticket_comment
    end

    def create
        ticket_comment = Ticket_comment.create(ticket_comment_params)
        render json: ticket_comment
    end

    def show
        ticket_comment = Ticket_comment.find(params[:id])
        render json: ticket_comment
    end

    def update
        ticket_comment = Ticket_comment.find(params[:id])
        ticket_comment.update(ticket_comment_params)
        render json: ticket_comment
    end

    def destroy
        ticket_comment = Ticket_comment.find(params[:id])
        ticket_comment.destroy
        render json: ticket_comment
    end

    private
    def ticket_comment_params
        params.permit(:user_id, :ticket_id, :id)
    end

end
