class CreateTemplates < ActiveRecord::Migration[7.0]
  def change
    create_table :templates do |t|
      t.string :name
      t.integer :points
      t.interval :duration
      t.string :type
      t.string :comments
      t.references :category, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :household, null: false, foreign_key: true

      t.timestamps
    end
  end
end
