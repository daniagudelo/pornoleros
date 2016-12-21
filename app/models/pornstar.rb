class Pornstar < ActiveRecord::Base
    has_and_belongs_to_many :videos
    has_many :categories, through: :videos
    
    validates :name, presence: true, length: { maximum: 105 },
    uniqueness: { case_sensitive: false }

end
