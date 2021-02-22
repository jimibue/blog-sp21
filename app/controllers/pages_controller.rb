class PagesController < ApplicationController
  def index
    # define instance variable
    @pages = Page.all
     #ssr
    render component: "Pages", props: {pages: @pages}

  end

  def show
    # params in our controller
    @page = Page.find(params[:id])
    # page = Page.first
    render component: "Page", props: {page: @page}
  end

  def new
  end
end
