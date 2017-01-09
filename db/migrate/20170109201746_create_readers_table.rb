class CreateReadersTable < ActiveRecord::Migration[5.0]
  def change
    create_table :readers do |t|
      t.string :title
      t.string :url
      t.integer :counter, default: 1
    end
  end
end
