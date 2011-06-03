module Parser
   require 'rss'
   require 'open-uri'
   
   def self.read_news 
     RSS::Parser.parse(Settings.rss.feed)	
   end	

end
