class CreateSymptoms < ActiveRecord::Migration[8.0]
  def change
    create_table :symptoms do |t|
      t.string :title, null: false
      t.string :category, null: false
      t.text :steps, null: false
      t.text :points
      t.boolean :should_see_doctor, default: false, null: false  #初期値false「基本的には様子見でOK」
      t.string :source_url

      t.timestamps
    end
  end
end
