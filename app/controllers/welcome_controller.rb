class WelcomeController < ApplicationController
  def index
    @users = User.all
  end

  def about
  end

  def map
    @users = User.all
  end

  def messages
    @message = Message.new
    @messages = Message.all
  end
end
