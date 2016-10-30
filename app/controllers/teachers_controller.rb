class TeachersController < ApplicationController
  def index
    render json: Teacher.all
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.courses.destroy_all
    @teacher.destroy
    render json: { code: 'success', msg: '成功删除' }
  end
end
