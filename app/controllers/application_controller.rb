class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :configure_permitted_parameters, if: :devise_controller?



  def after_sign_in_path_for(resource)
    coffees_path   # 新規登録、ログイン後coffees/indexへ
  end

  protected



  def after_sign_out_path_for(resource)
    about_path
  end


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :name ])
    devise_parameter_sanitizer.permit(:account_update, keys: [ :name ])  # ← これを追加
  end
end
