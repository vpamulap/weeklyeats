task :punch => :environment do
  require 'mechanize'
  
  puts 'hello'
  
  url = 'http://www.punchfork.com'
  
  agent = Mechanize.new
  recipes = agent.get(url).search('div.recipe-card > a')
  
  recipes.each do |link|
    agent.get(url + link.attributes['href'].content)
    puts agent.page.search('div#source-ingredients ul:nth-child(2)').inner_text
  end
  
end