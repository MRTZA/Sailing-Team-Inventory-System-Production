class UsersController < Clearance::UsersController
  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :permission)
  end

  public
  def index
    @users = User.all
  end

  def show
    id = params[:id]
    @user = User.find(id)
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]
    @user.update_attributes!(user_params)
    flash[:notice] = "#{@user.username} was successfully updated."
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = "User '#{@user.username}' deleted."
    redirect_to users_path
  end

  def add

  end

  def insert
    @user = User.create!(user_params)
    flash[:notice] = "#{@user.username} was successfully created."
    redirect_to users_path
  end
end