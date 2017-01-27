class IndoxController < ApplicationController
  def index
    @conversations = Conversation.all
    @conversation = Conversation.find(params[:id]) if params[:id]
  end
end
