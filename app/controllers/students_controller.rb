class StudentsController < ApplicationController
    def index
        render json: Student.all
    end

    def grades
        student = Student.order(grade: :desc)
        render json: student
    end

    def highest_grade
        student = Student.order(grade: :desc).first
        render json: student
    end
end
