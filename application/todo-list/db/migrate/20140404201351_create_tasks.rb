class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.belongs_to :list
      t.string :title
      t.date :date
      t.boolean :closed, :default => false

      t.timestamps
    end
  end
end
