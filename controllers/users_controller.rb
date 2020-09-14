class UsersController < ApplicationController

def index
	    @students=Student.all
		@users = User.all
		@faculties=Faculty.all
	end

	def new 
		@users= User.new
	end
	
	def edit
       @user= User.find(params[:id])
	end
	
	def create
		@users= User.new(mp_params)
		if @users.save
			redirect_to action:"index"
		else
			render :new
		end
	end
    def show
        @users= User.new(mp_params)
        if @users.save
        	flash[:notice] = "Successfully added"
        	redirect_to action:"index"
        else
        	flash[:notice] = "Not Successfully added"
            render action: "new"
        end    
    end    
          
	private
	def mp_params
		params.require(:user).permit(:username, :password_digest)
	end


end