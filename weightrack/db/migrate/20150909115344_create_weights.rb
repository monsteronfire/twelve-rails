class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.integer :measurement
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
