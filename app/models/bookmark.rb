class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :symptom

  validates :user_id, :symptom_id, presence: true
end
