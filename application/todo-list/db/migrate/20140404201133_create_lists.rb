class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.belongs_to :user
      t.string :name
      t.date :date
      t.boolean :available, :default => true

      t.timestamps
    end
  end
end
