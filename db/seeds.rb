# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
require 'random_data'

 # Create Posts
 50.times do
#use create with a band (!) to raise an error if there's a problem
   Post.create!(
     # use methods from a class that doesn't exist yet, RandomData
     # that will create random strings for title and body
     # wishful coding = writing code for classes and methods that don't
     # exist because it keeps you focused and saves time
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 posts = Post.all

 # Create Comments
 100.times do
   Comment.create!(
     # call sample on the array returned by Post.all in order to pick a random
     # post to associate each comment with
     # Sample - returns a random element from the array when its called
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end

 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
