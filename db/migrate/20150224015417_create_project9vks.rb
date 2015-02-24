class CreateProject9vks < ActiveRecord::Migration
  def change
    create_table :project9vks do |t|
      t.string :title
      t.string :about
      t.date :date
      t.integer :attendance
      t.boolean :done

      t.timestamps null: false
    end
  end
end
