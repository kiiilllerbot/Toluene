class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :size
      t.string :category
      t.string :budget
      t.string :client_name
      t.string :client_email
      t.string :image_link
      t.date :deadline
      t.string :status, default: 'Active'
      t.references :user, foreign_key: true
      
      t.timestamps
    end
  end
end
