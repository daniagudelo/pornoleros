class Video < ActiveRecord::Base
    #This validates the presence of title
    validates :title, presence: true, length: {maximum: 140}
    #This validates the presence of preview link
    validates :preview, presence: true
    #This validates the presence of Pornstars
    #validates :pornstars, presence: true
    #This validates the presence of a description
    #validates :description, presence: true
    
    has_and_belongs_to_many :pornstars
    has_and_belongs_to_many :categories
    belongs_to :user
end
