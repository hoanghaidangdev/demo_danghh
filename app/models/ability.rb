# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    case user.role
    when "admin"
      can :access, :rails_admin
      can :dashboard, :all
      can :manage, :all
    when "teacher"
      can :manage, [Exam, Question, Answer]
      can [:read, :update, :destroy], [LogExam, LogQuestion, LogAnswer]
    when "student"
      can :read, Exam
      can [:read, :create, :update], [LogExam, LogQuestion, LogAnswer]
    end
  end
end
