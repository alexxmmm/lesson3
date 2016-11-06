class CreateTodoItems < ActiveRecord::Migration[5.0]
  def change
    create_table :todo_items do |t|
      t.string :title
      t.integer :priority, default: 1
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
