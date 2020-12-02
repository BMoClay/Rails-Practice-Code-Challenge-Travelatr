class Post < ApplicationRecord
    belongs_to :blogger
    belongs_to :destination

    validates_presence_of :blogger_id
    validates_presence_of :destination_id
    validates_presence_of :title
    validates :content, length: { minimum: 100, message: "please add more words to your post"}
end
