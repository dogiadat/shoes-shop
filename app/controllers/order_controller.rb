class OrderController < ApplicationController
	before_action :logged_in_user
  def index
    session[:cart] << params[:product_id] if params[:product_id]
    session[:cart].uniq!
  end
end
