class Contact < ApplicationRecord
  belongs_to :household
  validates :title, presence: true
  validates :name, presence: true
end
