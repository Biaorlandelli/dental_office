class CreateImcs < ActiveRecord::Migration[7.0]
  def change
    create_table :imcs do |t|
      t.float :peso, null: false
      t.float :altura, null: false

      t.timestamps
    end
  end
end
