class StaticPagesController < ApplicationController
  def home
    @messages = Message.limit(50)
  end

end
