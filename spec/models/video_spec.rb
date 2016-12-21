require 'rails_helper'

RSpec.describe Video, type: :model do
    it "is not be valid without a pornstar" do
        video = Video.new(pornstars: nil)
        expect(video).to_not be_valid
    end
  pending "add some examples to (or delete) #{__FILE__}"
end
