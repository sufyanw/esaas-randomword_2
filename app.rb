require 'sinatra/base'
require_relative './words.rb'

class RandomWord < Sinatra::Base

  before do
    @word = WORDS.sample
  end

  def self.get_or_post(url, &block)
    get(url, &block)
    post(url, &block)
  end

  
  get_or_post '/' do 
    content_type 'text/html'
    erb :word
  end
  get_or_post '/RandomWord' do
    case params[:format]
    when nil, 'text', 'txt'
      content_type 'text/plain'
      @word
    when 'html'
      content_type 'text/html'
      erb :word
    when 'json'
      content_type 'application/json'
      %Q({"success": "true", "word": "#{@word}"})
    else
      status 501
      "Resource format not found"
    end
  end

end
