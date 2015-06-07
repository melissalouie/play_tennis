class MessagesController < ApplicationController


  def create
      @message = Message.new(message_params)
    if @message.save
      respond_to do |format|
           format.json
      end
    end
  end

  def destroy
  end

  private

  def message_params
    params.require(:message).permit(:email, :text)
  end
end
