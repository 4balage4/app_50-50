class Task < ApplicationRecord
  belongs_to :category
  belongs_to :user
  belongs_to :household
  belongs_to :kid, optional: true
end
