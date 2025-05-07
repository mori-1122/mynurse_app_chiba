Rails.application.routes.draw do
  #  deviceを使ったユーザー認証
  #  sessionsコントローラをオーバーライドし、自作ログイン処理（ゲスト対応など）を使えるようにする
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  # ゲストログインを仮ユーザーとしてログインさせる
  # guest_sign_in という新しいルート（POSTメソッド）を追加
  # Users::SessionsControllerのguest_sign_inに遷移する
  devise_scope :user do
    post 'guest_sign_in', to: 'users/sessions#guest_sign_in'
    get  'guest_sign_in', to: redirect('/') ##エラー対応
  end

  get "home/index"
  get "up" => "rails/health#show", as: :rails_health_check
  root to: "home#index"
end
