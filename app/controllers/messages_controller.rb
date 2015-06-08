class MessagesController < ApplicationController
skip_before_action :verify_authenticity_token

  def create
    @message = Message.new(message_params)
    if @message.save
      render json: @message.to_json
    end
  end

  def destroy
  end

  private

  def message_params
    params.require(:message).permit(:email, :text)
  end
end
