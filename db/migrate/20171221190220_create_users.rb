class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.integer :happiness
      t.integer :tickets
      t.integer :nausea
      t.boolean :admin, default: false
      t.datetime :created_at, null:false
      t.datetime :updated_at, null:false
      t.integer :height
    end
  end
end
