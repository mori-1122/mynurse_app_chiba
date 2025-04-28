class CreateSymptoms < ActiveRecord::Migration[8.0]
  def change
    create_table :symptoms do |t|
      t.string :title
      t.string :category
      t.text :steps
      t.text :points
      t.boolean :should_see_doctor
      t.string :source_url

      t.timestamps
    end
  end
end
