class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.references :book, foreign_key: true
      t.datetime :c_created_at
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
