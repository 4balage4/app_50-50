class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :points
      t.interval :duration
      t.string :type
      t.string :comments
      t.date :due_date
      t.references :kid, foreign_key: true
      t.boolean :status, default: false
      t.references :assigned_to, default: nil, foreign_key: { to_table: :users }
      t.references :category, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :household, null: false, foreign_key: true

      t.timestamps
    end
  end
end
