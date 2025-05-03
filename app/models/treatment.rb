class Treatment < ApplicationRecord
  belongs_to :user # 必ず「1人のユーザー」に属している
  belongs_to :symptom # 必ず「1つの症状」に属している

  validates :user_id, :symptom_id, presence: true
end
