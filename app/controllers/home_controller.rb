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
end
