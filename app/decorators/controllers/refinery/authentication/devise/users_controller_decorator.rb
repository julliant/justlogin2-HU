Refinery::Authentication::Devise::UsersController.class_eval do
  before_action :set_user, only: [:edit, :update]

  def edit
    print 'inside edit!!'
  end

  def update
    @user.update user_params
    @user.save
    print 'hello'
    redirect_to '/main', notice: 'Updated successfuly!!'
  end

  private

  def set_user
    @user = current_authentication_devise_user
  end

  def user_params
    params.require(:user).permit(:username, :email, :full_name, :phone)
  end

end
