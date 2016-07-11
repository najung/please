class Post < ActiveRecord::Base
    validates :user_id, presence: true  
    belongs_to :user
    has_many :comments, dependent: :destroy
    validates :title, presence: true
    validates :content, presence: true
    validates :image_url, presence: true
end

