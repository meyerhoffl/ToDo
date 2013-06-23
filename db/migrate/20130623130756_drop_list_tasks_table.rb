class DropListTasksTable < ActiveRecord::Migration
  def up
    drop_table :list_tasks
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
