require "web_scraper/version"
require 'thor'
require 'image'

module WebScraper
  class Error < StandardError; end

  # Command line tool
  class CLI < Thor
    desc "scrape URL", "Scrap the given Url"
    def scrape(url)
      Image.new(url: url).scrape
    end
  end
end
