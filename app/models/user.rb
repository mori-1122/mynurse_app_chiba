class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :treatments, dependent: :destroy # #1人のユーザーが複数の治療記録を登録できる
  has_many :bookmarks, dependent: :destroy # #気になる症状を何件もブックマークできる
  has_many :notifications, dependent: :destroy

  validates :name, presence: true # #ユーザー名（name）は必ず入力されていなければならない
  validates :email, presence: true, uniqueness: true # #メールアドレスは必須 他のユーザーと重複してはいけない
  validates :notification_enabled, inclusion: { in: [ true, false ] } # #通知をON,OFFにするか（true / false）を必ず指定しないといけない nil（未設定）のままだと、通知機能が誤動作するリスク
end
