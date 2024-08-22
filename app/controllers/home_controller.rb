class HomeController < ApplicationController
  def index
    #render plain: "Hello World from Rails 7"
    render html: "<h1>Hello World from Rails 7 (HTML)</h1>".html_safe
  end
end
