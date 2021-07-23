require 'rails_helper'

RSpec.describe Like, type: :model do
 
  it "user likes a post" do

    jhonas = FactoryBot.create(:user)
    silas = FactoryBot.create(:user)
    anne = FactoryBot.create(:user)

    post = FactoryBot.create(:post, user: jhonas)
    Like.create(user: silas, post: post)

    expect(post.likes.count).to eql 1
    expect(post.likes.first.user).to eql silas

    Like.create(user: anne, post: post)

    expect(post.likes.count).to eql 2
    expect(post.likes.last.user).to eql anne

    Like.find_by(post: post, user: silas).destroy

    expect(post.likes.count).to eql 1
    expect(post.likes.first.user).to eql anne

  end
end
 