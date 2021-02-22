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
    # need to return a form
    render component: "PageNew"
  end
  
  def create
   puts "HERE!!!!!"
   puts params #{"page"=>{"title"=>"MY TITLE HERE"}
   title = params[:page][:title] 
   author = params[:page][:author] 
   body = params[:page][:body] 

   Page.create(title: title, body: body, author:author )
   redirect_to pages_path
  end
end
