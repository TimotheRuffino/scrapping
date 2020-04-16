#//////////////////////////////////////////////////AVERTISSEMENT\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\# 
#À tous ceux qui auront la (mal)chance de lire ce code, je m'excuse d'avance pour sa médiocrité :-)
#Je n'ai vraiment rien compris au scraping
#    ¯\_(⊙︿⊙)_/¯

require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pp'



page = Nokogiri::HTML(open("https://coinmarketcap.com/")) #link avec la page à scrapper



name = page.xpath('//div[@class="cmc-table__column-name sc-1kxikfi-0 eTVhdN"]/a[@class="cmc-link"]') #récupération des crypto-monnaies avec Xpath
crypto_array=[]
name.each do |names|
  crypto_array << names.text #inclue les monnaie dans le array
end


price = page.xpath('//div[@class="cmc-table__table-wrapper-outer"]/div/table/tbody/tr[@class="cmc-table-row"]/td[contains(@class, "price")]')
price_array=[] 
price.each do |prices|
  price_array << prices.text #inclu le prix des monnaies dans un autre array
end 



hash2 = Hash[crypto_array.zip(price_array.map)] #rassemble les 2


pp hash2



 