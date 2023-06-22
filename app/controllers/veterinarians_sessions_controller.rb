class VeterinariansSessionsController < ApplicationController
  def new
    # ログインフォームの表示　new.html.erb
  end

  def create
    veterinarian = Veterinarian.find_by(email: params[:email])

    if veterinarian && veterinarian.authenticate(params[:password])
      sign_in(veterinarian)
      redirect_to root_path, notice: "ログインしました。"
    else
      flash.now[:alert] = "メールアドレスまたはパスワードが正しくありません。"
      render :new
    end
  end

  def destroy
    sign_out(veterinarian)
    redirect_to root_path, notice: "ログアウトしました。"
  end

  private

  def sign_in(veterinarian)
    session[:veterinarian_id] = veterinarian.id
  end

  def sign_out(veterinarian)
    session[:veterinarian_id] = nil
  end
end
