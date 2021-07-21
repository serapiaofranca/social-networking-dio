require 'rails_helper'

RSpec.describe Subscription, type: :model do
 
  it "user can follow another user" do
    john = FactoryBot.create(:user) 
    mary = FactoryBot.create(:user) 

    Subscription.create(followed: mary, followed_by: john)
    
    expect(mary.followers.count).to eql 1
    expect(mary.followers).to include john

    expect(john.following.count).to eql 1
    expect(john.following).to include mary

    expect(mary.following.count).to eql 0
    expect(mary.following).to_not include john

    expect(john.followers.count).to eql 0
    expect(john.followers).to_not include mary

    angel = FactoryBot.create(:user)

    Subscription.create(followed: mary, followed_by: angel)

    expect(mary.followers.count).to eql 2
    expect(mary.followers).to include angel

    expect(angel.following.count).to eql 1
    expect(angel.following).to include mary

  end
end
 