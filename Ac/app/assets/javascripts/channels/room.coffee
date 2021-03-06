App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
     alert data[message]    
    # Called when there's incoming data on the websocket for this channel

  speak: (message)->
    @perform 'speak', message: message

$(document).on 'keypress', '[data-behaviour~=room_speaker]',(event) ->
 if event.keycode is 13 
 App.room.speake.event.target.value
 event.target.value=''
 event.preventDefault()