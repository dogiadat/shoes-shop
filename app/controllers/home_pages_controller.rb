class HomePagesController < ApplicationController
  def home
    @products = Product.paginate page: params[:page]
  end

  def help
  end
end
