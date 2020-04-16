require 'rubygems'
require 'nokogiri'
require 'open-uri'

require 'pry'

page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/95/avernes.html"))



def get_townhall_email(townhall_url)
	pagemail.xpath('html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |townhall_url|
    puts townhall_url.text
   
  end
  
  return townhall_url
end 

puts get_townhall_email(townhall_url)