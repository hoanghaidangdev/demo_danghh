class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:name, :email,
      :password, :phone, :gender, :role, :avatar, :avatar_cache,
      :remove_avatar)}
    devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:name,
      :email, :password, :current_password, :gender, :phone, :avatar,
      :avatar_cache,:remove_avatar)}
  end

  def after_sign_in_path_for(resource)
    if current_user.teacher?
      teachers_questions_path
    elsif current_user.student?
      students_exams_path
    end
  end

  def after_sign_out_path_for(resource)
    new_user_session_path
  end
end
