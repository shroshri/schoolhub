class CreateStinsfos < ActiveRecord::Migration
  def change
    create_table :stinsfos do |t|
      t.string :name
      t.string :place

      t.timestamps null: false
    end
  end
end
