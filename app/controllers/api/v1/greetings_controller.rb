class Api::V1::GreetingsController < ApplicationController
  def random
    message = Message.order('RANDOM()').first
    render json: { content: message&.content || 'No message available' }
  end
end
