class VeterinariansController < ApplicationController
  def index
    # 獣医師一覧
  end

  def new
    # 新規作成
  end

  def create
    # ログイン処理
    if @veterinarians.save
      redirect_to veterinarians_path
    else
      redirect_to new_veterinarian_session_path
    end
  end


  
  def update
    @veterinarian = current_veterinarian
    if @veterinarian.update(veterinarian_params)
      redirect_to veterinarian_path(@veterinarian)
    else
      render :edit
    end
  end


  def show
  
  end

  def destroy
    # 削除処理アクション
  end

  private

  def veterinarian_params
    # パラメーターの設定
  end
end
