class Task < ApplicationRecord
  belongs_to :category
  belongs_to :user
  belongs_to :household
  belongs_to :kid, optional: true
  belongs_to :assigned_to, class_name: "User", optional: true
end
