class User < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  has_secure_password
  validates :address, presence: true
  validates :password, presence: true
  validates :email, uniqueness: true

  geocoded_by :address
  after_validation :geocode

  ABILITIES = [
    '2.0 - New to tennis',
    '2.5 - Very Beginner',
    '3.0 - Beginner, has had court experience',
    '3.5 - Beginner to Intermediate, has some consistency with shots',
    '4.0 - Intermediate, has match experience and consistency and accuracy with shots',
    '4.5 - Intermediate to Advanced, has competitive experience in the past',
    '5.0 - Advanced, has collegiate competitive experience',
    '6.0 - Very Advanced, has Division I collegiate experience, semi-pro, etc.'
    ]

end
