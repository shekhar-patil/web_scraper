require 'pry'
require 'nokogiri'
require 'net/http'

class Image
  attr_accessor :url

  def initialize(url:)
    @url = url
  end

  def scrape
    html = Nokogiri::HTML(Net::HTTP.get(URI(@url)))
    images = []
    html.css('img').each { |a| images << a['src'] }
    images.size == 0 ? (puts 'No image found') : (puts images)
  end
end
