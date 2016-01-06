require 'open-uri'
require 'nokogiri'
require 'rubygems'

# Get the page
doc = Nokogiri::HTML(open("http://forecast.weather.gov/MapClick.php?textField1=37.41&textField2=-122.12#.VocW_DZi7fA"))

temp = ARGV[0].to_i

# Isolate the output
#puts doc.css('div#current_conditions-summary').css('p.myforecast-current-lrg').text

#puts doc.css('div#current_conditions-summary').text

#puts "The class type of this is:"
newarktemp = doc.css('p.myforecast-current-lrg').text.to_i

if newarktemp > temp
    puts "It's warmer than that, yeah..."
else
    puts "Nah, dude, it's way colder than that."
end

