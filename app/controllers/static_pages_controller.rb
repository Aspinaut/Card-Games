class StaticPagesController < ApplicationController
  def home
    # chat
    ActionCable.server.broadcast('main_chat', {content: "Salut"})
  end

end
