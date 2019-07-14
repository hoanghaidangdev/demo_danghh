module Students
  class ExamsController < ApplicationController
    def index
      @exams = Exam.all
    end

    def new
      @log_exam = current_user.log_exams.find(params[:id])
      unless @log_exam.activated
        flash[:danger] = "Enter exam code before start this exam"
        redirect_to new_students_confirmation_path(exam_id: @log_exam.exam_id)
      end
      @exam = Exam.find(@log_exam.exam_id)
      @log_question = @log_exam.log_questions.new
      @log_answer = @log_question.log_answers.new
    end

    def create
      log_exam = LogExam.find(params[:log_exam][:log_exam_id])
      log_exam.update_attributes log_exam_params
      exam = Exam.find(log_exam.exam_id)
      score = exam_score log_exam, exam
      log_exam.update_attributes score: score, submitted: true
      redirect_to students_exams_path
    end

    private
    def log_exam_params
      params.require(:log_exam).permit(log_questions_attributes:
        [:subject_name, :content, log_answers_attributes:
          [:is_true, :option]])
    end

    def exam_score(log_exam, exam)
      score = 0
      exam.questions.each_with_index do |question, ques_index|
        log_question = log_exam.log_questions[ques_index]
        check = true
        question.answers.each_with_index do |answer, ans_index|
          log_answer = log_question.log_answers[ans_index]
          if log_answer.is_true != answer.is_true
            check = false
          end
        end
        if check == true
          score += 1
        end
      end
      score
    end
  end
end
