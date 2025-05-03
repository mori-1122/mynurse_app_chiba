class CreateTreatments < ActiveRecord::Migration[8.0]
  def change
    create_table :treatments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :symptom, null: false, foreign_key: true
      t.text :memo

      t.timestamps
    end
  end
end
