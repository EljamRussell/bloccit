require 'rails_helper'

RSpec.describe Post, type: :model do
  #create a new instance of the Post class
  let(:post) { Post.create!(title: "New Post Title", body: "New Post Body") }
  #whether post has attributes named title and body
   describe "attributes" do
     it "has title and body attributes" do
       expect(post).to have_attributes(title: "New Post Title", body: "New Post Body")
     end
   end
end
