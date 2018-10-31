class EmployeesController < ApplicationController

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new( employee_params )
  end

  def edit
    @employee = Employee.find_by(id: params[:id])
    render "_form.html.erb"
  end

  def update
    @employee.update(employee_params)
  end

  def show
  end

  def index
    @employees = Employee.all
  end

  def destroy
  end

  private

  def employee_params
    params.require(:employee).permit(:name, :address, :phone, :employment_date, :employee_type_id)
  end

end
