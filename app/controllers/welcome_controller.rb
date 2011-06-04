class WelcomeController < ApplicationController
  
  require 'reader_rss/parser' 

  MAX_NEWS = Settings.rss.max_news.to_i

  before_filter :get_news, :only => [:index]

  def index
    
  end


  
  private

   def get_news
     rss = Parser.read_news
     @news = rss.items[0..MAX_NEWS]	
   end

	




end
