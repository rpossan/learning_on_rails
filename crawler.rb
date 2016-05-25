require 'rubygems'
require 'mechanize'

a = Mechanize.new { |agent|
  agent.user_agent_alias = 'Mac Safari'
}

a.get('http://google.com/') do |page|
  search_result = page.form_with(:id => 'tsf') do |search|
    search.q = 'Thomson'
  end.submit

  search_result.links.each do |link|
    puts link.text
  end
end