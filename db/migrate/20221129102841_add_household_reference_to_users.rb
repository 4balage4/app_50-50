class AddHouseholdReferenceToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :household, foreign_key: true
  end
end
