class UsersController < ApplicationController
  def index
	@user = User.new	

  end
def new
	
  end
  def create
  	@user = User.new(user_params)
  	if @user.save
  		#exit
  		redirect_to @user
  	else
  		render 'index'
  	end

	
  end

  def user_params

  	params.require(:user).permit(:name, :mobile, :age, :email, :password,:password_confirmation, :terms)

  end


  def show
	
  end
  def edit
	
  end
  def update
	
  end
  def detroy
	
  end

end
