require 'pry'
require 'open-uri'
require 'nokogiri'
require 'rubygems'

# commencer par obtenir un e-mail de mairie à partir de la page de cette dernière 
def get_townhall_email(urls)
    halls = Array.new
    urls.each do |url|
        tab = Array.new
        page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/"))
    end
end


# get_townhall_valdoise_url vas chercher TOUS les urls de toutes les mairies du val d'oise
def get_townhall_valdoise_url
    townhall_link = "http://annuaire-des-mairies.com/val-d-oise.html"
    twonhallurls = Array.new
    page = Nokogiri::HTML(open(townhall_link))
    geturl = page.css('//[@class="lientxt"]').each do |link|
        url = link['href']
        twonhallurls << url
    end
    return twonhallurls
end

def perform
    puts get_townhall_valdoise_url
end

perform