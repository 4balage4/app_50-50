class AddTitleToContacts < ActiveRecord::Migration[7.0]
  def change
    add_column :contacts, :title, :string
  end
end
