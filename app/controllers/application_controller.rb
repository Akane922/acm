class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  # ログイン後に遷移するページ
  def after_sign_in_path_for(resource)
    if current_veterinarian
      flash[:notice] = "ログインに成功しました"
      veterinarians_path
    else
      new_veterinarian_session_path
    end
  end

  
  protected
  
  def logged_in?
    veterinarian_signed_in?
  end

  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :avatar, :category_id, :resume_posting, :motto])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :avatar, :resume, :license, :category_id, :card_title, :motto, :available_date1, :available_date2, :available_date3 ])
    end
end


