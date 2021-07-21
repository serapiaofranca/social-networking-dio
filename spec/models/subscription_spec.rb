require 'rails_helper'

RSpec.describe Subscription, type: :model do
 
  it "user can follow another user" do
    john = FactoryBot.create(:user) 
    mary = FactoryBot.create(:user) 

    Subscription.create(followed: mary, followed_by: john)
    
  end
end
 