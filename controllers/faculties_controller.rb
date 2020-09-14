class FacultiesController < ApplicationController

    def index
		@faculties = Faculty.all
	end

	def new 
		@faculties= Faculty.new
	end

    def edit
		@faculties= Faculty.find(params[:id])
	end

	def create
		@faculties= Faculty.new(mp_params)
		if @faculties.save
			redirect_to action:"index"
		else
			render :new
		end
	end

    def update
		@faculties= Faculty.find(params[:id])
		if @faculties.update_attributes(mp_params)
			flash[:notice] = "Successfully Updated"
        	redirect_to action:"index"
		else
			flash[:notice] = "Not Successfully added"
            render action: "edit"
		end

	end

	def destroy
		@faculties= Faculty.find(params[:id])
		@faculties.destroy
		flash[:note]="Deleted Record"
		redirect_to action:"index"
	end

    def show
        @faculties= Faculty.new(mp_params)
        if @faculties.save
        	flash[:notice] = "Successfully added"
        	redirect_to action:"index"
        else
        	flash[:notice] = "Not Successfully added"
            render action: "new"
        end 
    end     
          
	private
	def mp_params
		params.require(:faculty).permit(:fname, :mname, :lname, :fullname, :emailid, :dob, :telnp, :gender, :qualification, :workexp, :specialization)
	end
end	