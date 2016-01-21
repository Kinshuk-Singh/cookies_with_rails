class CookiesController  < ApplicationController

  def write_cookies
    cookies[:user_id] = Random.new(10)
    cookies[:hello] = "wth"
    cookies[:check_url] = "yes"
    
    redirect_to "/cookies/redirect", {status: 303}
    #render text: "cookies are read"
  end

  def redirect_url
    redirect_to "http://www.google.com"
  end

  def read_cookies
    if cookies.has_key?(:user_id)
      puts "what are my cookies #{cookies[:user_id]}"
    end
    render text: "cookies are read"
  end

end