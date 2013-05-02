require "ea_sports_ppi/version"

require 'nokogiri'
require 'open-uri'
require 'ruport'

module EaSportsPpi
  # Your code goes here...
  def self.run()
    doc=Nokogiri::HTML(open("http://www.premierleague.com/en-gb/players/ea-sports-player-performance-index/"))
    tables=doc.xpath('/html/body/div/div/div/div/div/div/div/form/div/table')
    table = Ruport::Data::Table.new
    table.column_names = %w[PLAYER INDEX]
    tables[0].xpath('tbody/tr').each do |tr|
      #print(tr.xpath('td[4]').inner_text.strip, " ", tr.xpath('td[14]').inner_text.strip, "\n")
      array = Array.new  
      array << tr.xpath('td[4]').inner_text.strip
      array << tr.xpath('td[14]').inner_text.strip
      table << array
    end
    puts table.to_text
  end
end
