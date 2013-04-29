require "ea_sports_ppi/version"

require 'nokogiri'
require 'open-uri'

module EaSportsPpi
  # Your code goes here...
  def self.run()
    doc=Nokogiri::HTML(open("http://www.premierleague.com/en-gb/players/ea-sports-player-performance-index/"))
    tables=doc.xpath('/html/body/div/div/div/div/div/div/div/form/div/table')
    tables[0].xpath('tbody/tr').each do |tr|
      print(tr.xpath('td[4]').inner_text.strip, " ", tr.xpath('td[14]').inner_text.strip, "\n")
    end
  end
end
