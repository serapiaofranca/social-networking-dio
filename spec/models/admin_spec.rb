require 'rails_helper'

RSpec.describe Admin, type: :model do
  
  it "admin is valid" do
    admin = Admin.new(name: "Admin First", email: "admin@test.com", password: "123456")

    expect(admin.email).to eql "admin@test.com"
    expect(admin).to be_valid
  end

  it "admin is not value" do
    admin = Admin.new(email: "admin@test.com", password: "123456")

    expect(admin).to_not be_valid
  end

end
