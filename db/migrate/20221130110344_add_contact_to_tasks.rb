class AddContactToTasks < ActiveRecord::Migration[7.0]
  def change
    add_reference :tasks, :contact, foreign_key: true
  end
end
