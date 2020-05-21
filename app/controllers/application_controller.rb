class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user! , only: [:sign_in]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :last_name, :email, :password_confirmation, :password, :rua, :cep, :bairro, :cidade, :estado, :idadee, :nenhuma, :idoso, :asma, :cancer, :doe_cardio, :diabetico, :fumante, :gestante, :hipertensao, :obesidade, :possui_crianca, :possui_risco)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :last_name, :email, :password_confirmation, :password, :current_password,  :rua, :cep, :bairro, :cidade, :estado, :idadee, :nenhuma, :idoso, :asma, :cancer, :doe_cardio, :diabetico, :fumante, :gestante, :hipertensao, :obesidade, :possui_crianca, :possui_risco)}
  end
end