class CreateListTasks < ActiveRecord::Migration
  def change
    create_table :list_tasks do |t|
      t.string :task_id
      t.string :list_id
      t.string :date
      t.timestamps
    end
  end
end