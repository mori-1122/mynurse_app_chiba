class Notification < ApplicationRecord
  belongs_to :user #必ず1人のユーザーに属する 通知レコードには必ず user_id カラムが存在

  enum kind: {  ##kindカラムには「通知の種類」を文字列で指定
    reminder: "reminder", ##kind カラムには、「通知の種類」を文字列で指定
    info: "info", ##お知らせ通知
    warning: "warning" ##注意・警告通知
  }

  validates :user_id, presence: true
  validates :kind, presence: true
  validates :active, inclusion: { in: [true, false] } #通知のON/OFFはtrueまたはfalseを必ず指定（nil禁止）
end
