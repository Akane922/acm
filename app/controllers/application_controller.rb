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
  
  def after_update_path_for(resource)
    veterinarian_path(resource)
  end
  
  protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password, :password_confirmation, :avatar, :veterinary_certificate, :category_id, :resume_posting])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end
end


