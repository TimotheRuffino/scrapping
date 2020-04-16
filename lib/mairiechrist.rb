require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/95/avernes.html"))


def get_townhall_urls
  url_mairies = []
  url_mairies = $annuaire.css('//table[@class="Style20"]//a').map { |link| link["href"] }
  return url_mairies
end




