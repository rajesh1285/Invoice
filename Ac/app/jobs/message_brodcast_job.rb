 class MessageBrodcastJob < ApplicationJob
  queue_as :default

  def perform(message)
  	ActionCable.server.brodcast'room_channel',message: render_message[message]

    # Do something later
  end
  private
   def render_messge(message)
    	ApplicationController.render(partial: 'messages/message',locals: {message: message})
   end
end
