class MainChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "main_chat"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
