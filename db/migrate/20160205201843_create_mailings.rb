class CreateMailings < ActiveRecord::Migration
  def change
    create_table :mailings do |t|
      t.string :name
      t.string :template
      t.datetime :deliver_at
      t.datetime :delivered_at

      t.timestamps null: false
    end
  end
end
