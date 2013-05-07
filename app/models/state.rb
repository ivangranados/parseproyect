class State < ActiveRecord::Base
  attr_accessible :content, :url


def self.scrape_content
	   
	states = State.all 
	states.each do |state|
	 page = Nokogiri::HTML(RestClient.get("http://www.buycox.com/cox-cable-service/#{state.url}"))
	 data = page.css('div#seocontentbody').to_s
	 state.content = data
	 "content of #{state.url} saved" if state.save
	end	

end






end
