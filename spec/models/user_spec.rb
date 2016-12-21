require 'rails_helper'

RSpec.describe User, type: :model do
    it "is not valid without an email" do
        user = User.new(email: nil)
        expect(user).to_not be_valid
    end
    it "is not valid without a password" do
        user = User.new(password: nil)
        expect(user).to_not be_valid
    end
    
    it "should have many videos" do
        user = User.reflect_on_association(:videos)
        expect(user) == :has_many
    end
  pending "add some examples to (or delete) #{__FILE__}"
end
