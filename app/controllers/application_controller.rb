class ApplicationController < ActionController::Base # すべてのコントローラの親クラス。アプリ全体の共通処理を書く場所。
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  #   allow_brows before_action :configure_permitted_parameters, if: :devise_controller?

  # Deviseが使われているコントローラ（ログイン・サインアップなど）の時だけ、 configure_permitted_parameters メソッドを実行する。
  before_action :configure_permitted_parameters, if: :devise_controller?

  # これ以降に書かれるメソッドは 継承先のコントローラからは使えるが、外部（URL）から呼び出せない。セキュリティ上の保護。
  protected

  # Deviseのリクエストに許可するパラメータ（フォームから受け取ってもOKなデータ）を追加設定するためのメソッド。
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :name ])
    devise_parameter_sanitizer.permit(:account_update, keys: [ :name ])
  end
end
