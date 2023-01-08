class CreateForms < ActiveRecord::Migration[5.2]
  def change
    create_table :forms do |t|
      t.string :title
      t.text :description
      t.date :date
      t.text :age
      t.string :city
      t.string :gender

      t.timestamps
    end
  end
end
