#This script grabs the data that was posted to What Do They Know and extract those post boxes
#in the BA1 and BA2 area. 
# 
# If all you want is the data then look in the data directory. No need to run this script
require 'rubygems'
require 'hpricot'
require 'open-uri'
require 'zip/zip'
require 'csv'
require 'tempfile'
require 'osgb_convert'

dir = File.dirname(__FILE__) 

if !File.exists?( File.join(dir, "..", "data") )
  Dir.mkdir( File.join(dir, "..", "data") )
end

SOURCE_DATA = "http://www.whatdotheyknow.com/request/119687/response/296922/attach/3/CMD%20Extract%20All.zip"

temp = Tempfile.open("postboxes")
temp.print(open(SOURCE_DATA).read)
temp.flush
temp.close

CSV.open( File.join(dir, "..", "data/bath-postboxes.csv"), "w") do |output|

  Zip::ZipFile.open( temp.path ) do |zipfile|
    entry = zipfile.get_entry("Whittaker Extract All.txt")
    zipfile.get_input_stream(entry) do |stream|
      CSV.parse(stream.read) do |row|
        if row[2] != nil && row[2].match(/^BA(1|2)$/)
          location =  OsgbConvert::OSGrid.new( row[5].to_i, row[6].to_i )
          wgs84 = location.wgs84
          new_row = row.push( wgs84.lat, wgs84.long )
          output << new_row
        end               
      end
    end
  end

end