class ListController < ApplicationController

  [:latest, :hot, :favorited, :read, :posted, :unread, :new, :trending, :fresh].each do |filter|
    define_method(filter) do
      #list = Post.all.reverse
      list = Company.all
      @filter = filter
      respond(list)
    end
  end

  def respond(list)
  	@companies = list
    flash.now[:alert] = "test message"
    render 'list'
  end

end
