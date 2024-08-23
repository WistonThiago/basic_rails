class HomeController < ApplicationController
  def index
    #render plain: "Hello World from Rails 7"
    #render html: "<h1>Hello World from Rails 7 (HTML)</h1>".html_safe
    message="<h1>Hello world from Rails 7</h1>"
    message+="<h2>Hello world from Rails 7</h2>"
    message+="<h3>Hello world from Rails 7</h3>"
    message+="<h4>Hello world from Rails 7</h4>"
    message+="<h5>Hello world from Rails 7</h5>"
    message+="<h6>Hello world from Rails 7</h6>"

    render html: message.html_safe
  end

  def getquerystringvalues

    message=""
    if params[:message]
      message+="<h1>Message is: " + params[:message] + "</h1>"
    else
      message+="<h1>You haven't supplied any message.</h1>"
    end

    if params[:country]
      message+="<h1>Your country is: " + params[:country] + "</h1>"
    else
      message+="<h1>You haven't supplied any country.</h1>"
    end

    message+="<h1>Our controller name is: " + params[:controller] + "</h1>"
    message+="<h1>Our action name is: " + params[:action] + "</h1>"

    render html: message.html_safe

  end

  def passdatatoviews
    @message="<h1>Hello world from Rails 7</h1>"
    @message+="<h2>Hello world from Rails 7</h2>"
    @message+="<h3>Hello world from Rails 7</h3>"
    @message+="<h4>Hello world from Rails 7</h4>"
    @message+="<h5>Hello world from Rails 7</h5>"
    @message+="<h6>Hello world from Rails 7</h6>"
  end

  def showdatetimeinfo
    @currenttime = DateTime.now
  end

  def conditionalrendering
    @data = { 
      'name':'Jimmy Anderson',
      'isVisible': true,
      'loggedIn': true,
      'countryCode':'US',
      'workExperience':45,
      'state':nil
    }
  end
  
  def loopthrougharrays
    @products = []
    debugger
    @products.push( {'id':1, 'name':"Ryzen 3990", 'quantity':10, 'stock':5, 'cost':3000} )
    debugger
    @products.push( {'id':2, 'name':"Ryzen 3700", 'quantity':18, 'stock':5, 'cost':2500} )
    @products.push( {'id':3, 'name':"i5 12000", 'quantity':15, 'stock':5, 'cost':1800} )
  end

end
