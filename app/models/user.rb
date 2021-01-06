class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :first_name, :last_name, :gender, :phone, :email, presence: true
  validates :phone, :email, uniqueness: true
  validates :gender, inclusion: { in: ["Masculino", "Feminino", "Outro"]}
  has_many :bookings
end
