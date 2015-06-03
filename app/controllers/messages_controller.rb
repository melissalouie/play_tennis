class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
  end

  def destroy
  end

  private

  def message_params
    params.require(:message).permit(:email, :text)
  end
end
