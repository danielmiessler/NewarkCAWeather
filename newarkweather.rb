require 'open-uri'
require 'nokogiri'
require 'rubygems'

# Get the page
doc = Nokogiri::HTML(open("http://forecast.weather.gov/MapClick.php?textField1=37.41&textField2=-122.12#.VocW_DZi7fA"))

# Isolate the output
puts doc.css('div#current_conditions-summary').css('p.myforecast-current-lrg').text
