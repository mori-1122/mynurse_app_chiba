class Notification < ApplicationRecord
  belongs_to :user

  enum :kind, {
    reminder: "reminder",
    info: "info",
    warning: "warning"
  }

  validates :user_id, presence: true
  validates :kind, presence: true
  validates :active, inclusion: { in: [ true, false ] }
end
