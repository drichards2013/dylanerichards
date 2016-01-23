FactoryGirl.define do
  factory :photo do
    name "MyString"
    image { File.new("#{Rails.root}/spec/factories/photo.jpg")  } 
  end
end
