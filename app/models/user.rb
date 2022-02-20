class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable

  # associations
  has_many :sneakers, dependent: :destroy

  # validations
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :username
end
