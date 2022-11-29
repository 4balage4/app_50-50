class CreateKids < ActiveRecord::Migration[7.0]
  def change
    create_table :kids do |t|
      t.string :name
      t.references :household, null: false, foreign_key: true

      t.timestamps
    end
  end
end
