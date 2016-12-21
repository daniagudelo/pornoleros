require 'rails_helper'

RSpec.describe Category, type: :model do
    it "should have many videos" do
        category = Category.reflect_on_association(:videos)
        expect(category) == :has_many
    end
    it "should belong to many videos" do
        category = Category.reflect_on_association(:videos)
        expect(category) == :belongs_to_many
    end
  pending "add some examples to (or delete) #{__FILE__}"
end
