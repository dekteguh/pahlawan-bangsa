class CreatePahlawans < ActiveRecord::Migration[5.1]
  def change
    create_table :pahlawans do |t|
      t.string :name
      t.date :birth
      t.string :place
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
