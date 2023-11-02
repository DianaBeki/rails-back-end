class Api::GreetingsController < ApplicationController
  def index
    @random_greeting = Greeting.order('RANDOM()').first

    if @random_greeting
      render json: { message: @random_greeting.message }
    else
      render json: { message: 'No greetings available' }
    end
  end
end
