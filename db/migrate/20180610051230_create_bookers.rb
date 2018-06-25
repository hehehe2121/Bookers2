class CreateBookers < ActiveRecord::Migration[5.2]
  def change
    create_table :bookers do |t|
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
