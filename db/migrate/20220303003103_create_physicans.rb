class CreatePhysicans < ActiveRecord::Migration[5.2]
  def change
    create_table :physicians do |t|
      t.string :name
      t.string :title
      t.integer :age
      t.string :email
      t.integer :phone
      t.integer :experience
      t.timestamps
    end

  end
end
