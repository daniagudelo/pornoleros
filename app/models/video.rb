class Video < ActiveRecord::Base
    has_and_belongs_to_many :pornstars
    has_and_belongs_to_many :categories
end
