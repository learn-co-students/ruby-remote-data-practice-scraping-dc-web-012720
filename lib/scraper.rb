require 'nokogiri'
require 'open-uri'
require 'pry'
 
html = open("http://flatironschool.com/")
doc = Nokogiri::HTML(html)
 
courses = doc.css(".tout__label.heading.heading--level-4")

courses.each do |course|
    binding.pry
    puts course.text.strip
end


