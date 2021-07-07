FactoryBot.define do
    factory :user do
        name {"factory Name"}
        email {"factory@factory.com"}
        phone {"12 12345-6789"}
        avatar {Rack::Test::UploadedFile.new(Rails.root.join('spec/support/test-avatar.png'), 'image/png')}
        password {"123456"}
    end
end