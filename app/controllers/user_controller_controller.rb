class UserControllerController < ApplicationController
  
  def new
  end

  def create
  	@user = User.create name: params[:name], bio: params[:bio]
  	if @user.save
	redirect_to "/user/#{User.last.name}"	
	else
	redirect_to '/error'
    end
  end

  def show
  	@user = User.find_by(name: params[:name])
  end

  def error
  end
end
