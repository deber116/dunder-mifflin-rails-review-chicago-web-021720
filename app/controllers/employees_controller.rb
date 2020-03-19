class EmployeesController < ApplicationController
    def index 
        @employees = Employee.all
    end

    def new 
        @emp = Employee.new
    end

    def show
      # This call and the ones in edit/update could be refactored into one method, DRY things up a bit
        @emp = Employee.find(params[:id])
    end

    def edit
        @emp = Employee.find(params[:id])
    end

    def update
        @emp = Employee.find(params[:id])
        @emp.assign_attributes(strong_params)
        if @emp.valid?
            @emp.save
            # It's also possible, when generating a path for a show route, 
            # to just say @emp or whatever object you're showing.
            redirect_to employee_path(@emp)
        else
            render :edit
        end
    end

    def create
        @emp = Employee.new(strong_params)
        if @emp.valid?
            @emp.save
            redirect_to employee_path(@emp)
        else
            render :new
        end
    end

    # Good job setting your params in both controllers according to the Rails conventions.
    def strong_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id, :img_url)
    end
end
