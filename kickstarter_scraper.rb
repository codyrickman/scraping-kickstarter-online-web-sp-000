# require libraries/modules here
require 'nokogiri'

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  project_hash = {}
  projects = {}
  kickstarter.css("li.project.grid_4").each do |project|
     projects[project.css("h2.bbcard_name strong a").text] = {}
  end
  puts projects
  puts project_hash
end

create_project_hash
