class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.date :added
      t.string :task
      t.date :completed

      t.timestamps
    end
  end
end
