class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :name
      t.string :price
      t.string :model
      t.string :age
      t.string :motor
      t.string :factory
      t.attachment :avatar
      t.belongs_to :user, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
