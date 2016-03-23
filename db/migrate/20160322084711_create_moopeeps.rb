class CreateMoopeeps < ActiveRecord::Migration
  def change
    create_table :moopeeps do |t|
      t.string :username
      t.string :firstname
      t.string :surname
      t.string :email

      t.timestamps null: false
    end
  end
end
