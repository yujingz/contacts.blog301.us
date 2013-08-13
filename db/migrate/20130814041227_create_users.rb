class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :tel
      t.string :email
      t.string :address
      t.date :birthday

      t.timestamps
    end
  end
end
