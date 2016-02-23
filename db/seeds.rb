require 'ffaker'

<<<<<<< HEAD
15.times do |i|
  cities = ['Warszawa','Poznań','Łódź','Kraków','Los Angeles','New York','Instabul','Berlin','Dortmund','Lisbona']
  Post.create(
  	:title => FFaker::CheesyLingo.title, 
  	:desc => FFaker::HTMLIpsum.body,
  	:user_id => 1,
    :category_id => rand(1...7),
  	:tag_list => FFaker::CheesyLingo.words,
    :location => cities.shuffle.sample
=======
100.times do |i|
  Post.create(
  	:title => FFaker::CheesyLingo.title, 
  	:body => FFaker::CheesyLingo.paragraph,
  	:user_id => 1,
  	:slug => FFaker::CheesyLingo.words,
>>>>>>> 93d15be64da8ecf17a78c880c05a99f621018a8b
  	)
  sleep(1)
end