class UsersController < ApplicationController
skip_before_action :authenticate_user!, only: [:emailcheck]
  skip_before_action :verify_authenticity_token, only: [:emailcheck]

  def index
    @users = User.all
  end

  def delete
    @user.destroy
    respond_to do |format|
      format.html { redirect_to new_user_session, notice: 'Login desfeito com sucesso!' }
      format.json { head :no_content }
    end
  end

  def emailcheck
    @user = User.search_by(:email, params[:email])
    respond_to do |format|
      format.json {render :json => {email_exists: @user.present?}}
    end
  end