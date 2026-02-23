class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :addresses, dependent: :destroy
  has_many :products, dependent: :destroy
  has_many :interests, dependent: :destroy

  validates :name, presence: true
  validates :phone, presence: true, uniqueness: true
  
  enum role: {  buyer:0, seller:1, admin:2}
end
