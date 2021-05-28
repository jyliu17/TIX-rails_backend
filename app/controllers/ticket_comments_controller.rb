class TicketCommentsController < ApplicationController

    def index
        ticket_comments = TicketComment.all
        render json: ticket_comments
    end

    def create
        ticket_comment = TicketComment.create(ticket_comment_params)
        render json: ticket_comment
    end

    def show
        ticket_comment = TicketComment.find(params[:id])
        render json: ticket_comment
    end

    def update
        ticket_comment = TicketComment.find(params[:id])
        ticket_comment.update(ticket_comment_params)
        render json: ticket_comment
    end

    def destroy
        ticket_comment = TicketComment.find(params[:id])
        ticket_comment.destroy
        render json: ticket_comment
    end

    private
    def ticket_comment_params
        params.permit(:user_id, :ticket_id, :id)
    end

end
