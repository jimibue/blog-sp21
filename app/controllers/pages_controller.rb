class PagesController < ApplicationController
  def index
    # define instance variable
     @pages = Page.all
  end

  def show
  end

  def new
  end
end
