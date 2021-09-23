# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController

  def new
    super
    @user = User.new
  end

  def create
    super
    @user = User.new
    # @user.image = 'default.jpeg'
  end

  # def edit
  #   super
  # end

  # def update
  #   super
  #   @user.save
  # end

  # def destroy
  #   @user.destroy
  #   redirect_to root_path, notice: 'ユーザー情報を削除しました！'
  # end

end
