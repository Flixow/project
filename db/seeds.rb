require 'ffaker'

100.times do |i|
  Post.create(
  	:title => FFaker::CheesyLingo.title, 
  	:body => FFaker::CheesyLingo.paragraph,
  	:user_id => 1,
  	:slug => FFaker::CheesyLingo.words,
  	)
  sleep(1)
end