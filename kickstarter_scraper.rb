# require libraries/modules here
require Nokogirl

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  project_hash = {}
  kickstarter.css("li.project.grid_4").each do |project|
    project_hash << project.css("h2.bbcard_name strong a").text
  end
  puts project_hash
end

create_project_hash
