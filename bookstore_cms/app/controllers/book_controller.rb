class BookController < ApplicationController
  
   layout false
  def index
    #renders a view, template gets set
    #renders view 
    #redirect goes to a different controller performs controller actions and then renders views
    #render(:template => 'book/index')
    #shorter render('book/index')
    render('index') #super short
  end

  def show
    render('show')

  end

  def new
    #redirect_to(:controller => 'categories', :action => 'index')
    redirect_to(:action => 'show')
    redirect_to('http://lynda.com')
  end
end
