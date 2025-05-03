class CreateNotifications < ActiveRecord::Migration[8.0]
  def change
    create_table :notifications do |t|
      t.references :user, null: false, foreign_key: true
      t.string :kind, null: false
      t.boolean :active, default: true, null: false # #新しく通知データを作成したとき、自動的にONになる

      t.timestamps
    end
  end
end
