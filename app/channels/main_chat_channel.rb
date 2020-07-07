class MainChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "main_chat"
  end

  def speak(data)
    # if !current_user
    #   redirect_to new_registration_path
    # else
    #   message = Message.create(username: current_user, content:data['message'])
    #   html = ApplicationController.render(partial: 'static_pages/message', locals: {message: message})
    #   ActionCable.server.broadcast('main_chat', message: html)
    # end
    message = Message.create(username: current_user.pseudo, content:data['message'])
    html = ApplicationController.render(partial: 'static_pages/message', locals: {message: message})
    ActionCable.server.broadcast('main_chat', message: html)
  end
end
