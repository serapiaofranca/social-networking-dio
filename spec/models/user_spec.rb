require 'rails_helper'

RSpec.describe User, type: :model do

  # https://stackoverflow.com/questions/3966263/attachment-fu-testing-in-rails-3
  it "user is valid" do

    user = User.new(
      name: "User First", 
      email: "user@test.com", 
      phone: "11 12345-6789", 
      avatar: Rack::Test::UploadedFile.new(Rails.root.join('spec/support/test-avatar.png'), 'image/png') ,
      password: "123456"     
    )

    expect(user).to be_valid
  end

  it "user is not value" do
    user = User.new(email: "user@test.com", password: "123456")

    expect(user).to_not be_valid
  end

  it "user shold have a name value" do
    user = User.new(      
      email: "user@test.com", 
      phone: "11 12345-6789", 
      avatar: Rack::Test::UploadedFile.new(Rails.root.join('spec/support/test-avatar.png'), 'image/png') ,
      password: "123456"     
    )

    expect(user).to_not be_valid
  end
  
end
