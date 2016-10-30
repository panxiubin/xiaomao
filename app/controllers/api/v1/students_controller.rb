module Api
  module V1
    class StudentsController < ApplicationController
      def show
        infors = []
        @courses = Student.find(params[:id]).my_courses
        @courses.each do |course|
          teacher_name = course.teacher.name
          course_name = course.name
          info = {"teacher" => teacher_name, "course" => course_name}
          infors << info
        end

        render json: infors
      end
    end
  end
end
