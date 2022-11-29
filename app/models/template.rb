class Template < ApplicationRecord
  belongs_to :category
  belongs_to :user
  belongs_to :household
end
