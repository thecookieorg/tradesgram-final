class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :avatar, AvatarUploader

  has_many :questions, dependent: :destroy
  has_many :answers, dependent: :destroy
  has_many :projects, dependent: :destroy
  has_many :works, dependent: :destroy

  acts_as_messageable

  def mailboxer_full_name
  	self.full_name
  end

  def mailboxer_email(object)
  	self.email
  end
end
