class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.integer :list_id
      t.boolean :completed, :default => false
      t.timestamps
    end
  end
end