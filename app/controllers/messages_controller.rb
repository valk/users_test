class MessagesController < ApplicationController
  # GET /messages/new
  def new
    @designer_id = params[:designer_id]
  end

  # POST /messages
  # POST /messages.json
  def create
    recipient = Designer.find(params[:designer_id])
    current_user.send_message(recipient, params[:body], params[:subject])
    redirect_to root_path
  end
end
