class StudentsController < BaseController
  def show
    @student = Student.find(params[:id])
    render json: @student
  end
end
