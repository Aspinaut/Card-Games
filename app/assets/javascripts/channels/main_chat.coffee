App.main_chat = App.cable.subscriptions.create "MainChatChannel",
  connected: ->
    $(document).on 'keypress', '#message', (event) =>
      # if Enter key is pressed
      if event.keyCode is 13
        @speak(event.target.value)
        # reset reply form
        event.target.value = ""
        # prevent Enter to act elsewhere
        event.preventDefault()
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#messages').append(data.message)
    # Called when there's incoming data on the websocket for this channel

  # send message
  speak: (message) ->
    # send data to WebSocket
    @perform 'speak', {message: message}
