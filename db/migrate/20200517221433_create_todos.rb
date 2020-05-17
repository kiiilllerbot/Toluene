class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :name
      t.string :status, default: 'Active'
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
