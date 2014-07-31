class AssignmentsController < ApplicationController

  def new
    @person = Person.find(params[:person_id])
    @assignment = Assignment.new
  end

  def create
    @person = Person.find(params[:person_id])
    @assignment = @person.assignments.new(location_id: params[:assignment][:location_id], role: params[:assignment][:role])
    if @assignment.save
      redirect_to person_path(params[:person_id])
    else
      render :new
    end
  end
end