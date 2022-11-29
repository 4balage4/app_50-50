class Task < ApplicationRecord
  belongs_to :kid
  belongs_to :category
  belongs_to :user
  belongs_to :household
end
