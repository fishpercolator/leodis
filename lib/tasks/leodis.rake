require 'open-uri'
require 'pry'

namespace :leodis do
  desc "TODO"
  task scrape: :environment do
    (5000..6000).each do |n|
      p n
      begin
        file = open("http://www.leodis.net/display.aspx?resourceIdentifier=#{n}", "Accept-Encoding" => "plain")
        doc = Nokogiri::HTML(file)
        title       = doc.xpath("//meta[@name='DC.Title']/@content").first.value
        keywords    = doc.xpath("//meta[@name='DC.Subject']/@content").first.value.split(/,\s*/)
        description = doc.xpath("//meta[@name='DC.Description']/@content").first.value
        image       = "http://www.leodis.net/" + doc.css('#imgMedia img').first.attribute('src').value
        p title
        i = Image.create(title: title, description: description, url: image)
        i.tag_list.add(keywords)
        i.save!
      rescue StandardError => e
        puts "BAH: #{e}"
      end
    end
  end
end
