class Pornstar < ActiveRecord::Base
    has_and_belongs_to_many :videos
    has_many :categories, through: :videos
end
