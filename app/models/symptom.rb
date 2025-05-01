class Symptom < ApplicationRecord
  has_many :treatments, dependent: :destroy #たくさんの治療記録（Treatment）を持ち、紐づくTreatmentもまとめて削除
  has_many :bookmarks, dependent: :destroy #たくさんのブックマークを持ち、その症状に対するブックマークも全部削除

  validates :title, :category, :steps, presence: true
end
