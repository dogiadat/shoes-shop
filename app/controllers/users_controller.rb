class UsersController < ApplicationController
  before_action :logged_in_user, except: [:new, :show, :create]
  before_action :correct_user, only: [:edit, :update]
  before_action :admin_user, only: :destroy
  before_action :login_user, only: :new

  def index
    @users = User.paginate page: params[:page]
  end

  def show
    @user = User.find_by id: params[:id]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Chào mừng bạn đã đến Shoes Shop!"
      redirect_to root_url
    else
      render :new
    end
  end

  def edit
    @user = User.find_by id: params[:id]
  end

  def update
    @user = User.find_by id: params[:id]
    if @user.update_attributes user_params
      flash[:success] = "Đã cập nhật thông tin"
      redirect_to @user
      else
        render :edit
    end
  end

  def destroy
    User.find_by(id: params[:id]).destroy
    flash[:success] = "Đã xóa người dùng thành công"
    redirect_to users_url
  end

  private

  def user_params
    params.require(:user).permit :name, :email, :password, :pasword_confirmation, :phone, :address
  end

  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Vui lòng đăng nhập"
      redirect_to login_url
    end
  end

  def correct_user
    @user = User.find params[:id]
    redirect_to root_url unless current_user?(@user)
  end
end
