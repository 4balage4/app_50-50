class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :household
  has_many :tasks
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
  # before_create :assign_color

  # def assign_color
  #   colors = # array of colors
  #   # color = sample
  # end'
end
