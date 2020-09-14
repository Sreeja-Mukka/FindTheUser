class StudentsController < ApplicationController

    def index
		@students = Student.all
	end

	def new 
		@students= Student.new
	end
	def edit
		@students= Student.find(params[:id])
	end

	def create
		@students= Student.new(mp_params)
		if @students.save
			redirect_to action:"index"
		else
			render :new
		end
	end
	
	def update
		@students= Student.find(params[:id])
		if @students.update_attributes(mp_params)
			flash[:notice] = "Successfully Updated"
        	rrender nothing: true
		else
			flash[:notice] = "Not Successfully added"
            render action: "edit"
		end

	end

	def destroy
		@students= Student.find(params[:id])
		@students.destroy
		flash[:note]="Deleted Record"
		render action: 'index'
	end

    def show
        @students= Student.new(mp_params)
        if @students.save
        	flash[:notice] = "Successfully added"
        	redirect_to action:"index"
        else
        	flash[:notice] = "Not Successfully added"
            render action: "new"
        end 
    end     
          
	private
	def mp_params
		params.require(:student).permit(:fname, :mname, :lname, :emailid, :imageurl,:dob, :telnp, :fathername, :gender, :bloodgroup, :schoolname, :yearofpass)
	end
end