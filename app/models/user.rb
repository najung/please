
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_format_of :username, { :with => /^[A-Za-z0-9 ]*$/, :message => "은 영어로만 가능해요!",  :multiline => true}  
  has_many :posts, dependent: :destroy  
  has_many :comments, dependent: :destroy
  
  
end
