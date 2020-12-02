class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts

    validates :name, uniqueness: true
    validates :age, numericality: { greater_than: 0 } 
    validates :bio, length: { minimum: 30, message: "please add more words to your bio"}
end
