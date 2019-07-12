module Teachers
  class SubjectsController < ApplicationController
    def show
      @questions = Subject.find(params[:id]).questions
    end
  end
end
