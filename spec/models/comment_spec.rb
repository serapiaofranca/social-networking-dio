require 'rails_helper'

RSpec.describe Comment, type: :model do
 
  it "user comment a post" do

    jane = FactoryBot.create(:user)
    rick = FactoryBot.create(:user)
    post = FactoryBot.create(:post, user: jane)
    
    comment = FactoryBot.create(:comment, user: rick, post: post)

    expect(post.comments.count).to eql 1
    expect(post.comments.first.user).to eql rick

    expect(post.comments.first.body).to eql "very good post..."
    expect(rick.comments.first).to eql comment
  end
  
end
