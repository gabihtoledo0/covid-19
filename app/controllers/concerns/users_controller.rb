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

  def edit
  end

  def update
    respond_to do |format|
      if @idea.update(idea_params)
        format.html { redirect_to @idea, notice: 'Idea was successfully updated.' }
        format.json { render :show, status: :ok, location: @idea }
      else
        format.html { render :edit }
        format.json { render json: @idea.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @idea.destroy
    respond_to do |format|
      format.html { redirect_to ideas_url, notice: 'Idea was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def emailcheck
    @user = User.search_by(:email, params[:email])
    respond_to do |format|
      format.json {render :json => {email_exists: @user.present?}}
    end
  end
end