class ApplicationController < ActionController::Base
  before_action :load_categories
  protect_from_forgery with: :exception
  include SessionsHelper

  def load_categories
    @categories = Category.all
  end

    def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Vui lòng đăng nhập"
      redirect_to login_url
    end
  end
end
