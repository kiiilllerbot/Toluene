class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.string :title
      t.text :description
      t.references :user, foreign_key: true
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
