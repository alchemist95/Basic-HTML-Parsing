    require 'open-uri'
    require 'nokogiri'
    doc = Nokogiri::HTML(open("http://www.4icu.org/in/indian-universities.htm"))
    doc.xpath('//table/tr/td/a').each do |node|
      if node.text!="Facebook" && node.text!="Twitter" && node.text!="Google+"
     	puts node.text
  	  end
    end