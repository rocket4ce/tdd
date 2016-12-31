FactoryGirl.define do
  factory :achievement do
    sequence(:title) { |n| "Achievement #{n}"}
    description "description"
    featured false
    cover_image "some_file.png"
    
    factory :public_achievement do
      privacy 0
    end

    factory :private_achievement do
      privacy 1
    end
    
  end
end
