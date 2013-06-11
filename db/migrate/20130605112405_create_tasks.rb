class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.timestamps
    end
  end
end

# class AddListIdToTasks
#   def change
#     add_column :list_id, :integer
#   end
# end