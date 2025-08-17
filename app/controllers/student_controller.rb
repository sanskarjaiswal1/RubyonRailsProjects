class StudentController < ApplicationController
  before_action :set_student, only: [:show, :update, :destroy]

  # GET /students
  def index
    @students = Student.all
    render json: @students
  end

  # GET /students/:id
  def show
    render json: @student
  end

  # POST /students
  def create
    @student = Student.new(student_params)
  
    if @student.save
      render json: { message: "Student created successfully", student: @student }, status: :created
    else
      render json: { errors: @student.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    if @student.update(student_params)
      render json: { message: "Student updated successfully", student: @student }
    else
      render json: { errors: @student.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # DELETE /students/:id
  def destroy
    @student.destroy
    render json: { message: "Student deleted successfully" }
  end

  private

  def set_student
    @student = Student.find_by(id: params[:id])
    render json: { error: "Student not found" }, status: :not_found unless @student
  end

  def student_params
    params.require(:student).permit(:name)
  end
end
