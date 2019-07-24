class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  def index
    case current_user.role
    when "admin"
      redirect_to rails_admin.dashboard_path
    when "teacher"
      redirect_to teachers_exams_path
    when "student"
      redirect_to students_exams_path
    else
      redirect_to new_user_session_path
    end
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:name, :email,
      :password, :phone, :gender, :role, :avatar, :avatar_cache,
      :remove_avatar)}
    devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:name,
      :email, :password, :current_password, :gender, :phone, :avatar,
      :avatar_cache,:remove_avatar)}
  end

  def after_sign_in_path_for resource
    case current_user.role
    when "admin"
      rails_admin.dashboard_path
    when "teacher"
      teachers_exams_path
    when "student"
      students_exams_path
    else
      new_user_session_path
    end
  end

  def after_sign_out_path_for resource
    new_user_session_path
  end
end
