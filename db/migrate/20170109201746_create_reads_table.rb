class CreateReadsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :reads do |t|
      t.string :title
      t.string :url
      t.integer :counter, default: 1
    end
  end
end
