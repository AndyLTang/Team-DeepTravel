class User < ApplicationRecord
    
      has_many :packages

    before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

#    has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
#  validates_attachment :image, :presence => true,
#  :content_type => { content_type: ["image/jpg","image/jpeg","image/png","image/gif"] },
# =>   :size => { :in => 0..100.megabytes }
end
