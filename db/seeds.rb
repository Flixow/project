require 'ffaker'

15.times do |i|
  cities = ['Warszawa','Poznań','Łódź','Kraków','Los Angeles','New York','Instabul','Berlin','Dortmund','Lisbona']
  Post.create(
  	:title => FFaker::CheesyLingo.title, 
  	:desc => FFaker::HTMLIpsum.body,
  	:user_id => 1,
    :category_id => rand(1...7),
  	:tag_list => FFaker::CheesyLingo.words,
    :location => cities.shuffle.sample
    sleep(1)
  )
end