class Admin::CategoriesController < Admin::BaseController

  def show
    @category = Category.find_by id: params[:id]
  end

  def index
    @categories = Category.paginate page: params[:page],per_page:5
  end

  def create
    @category = Category.new category_params
    if @category.save
      flash[:success] = "Tạo hãng thành công"
      redirect_to admin_categories_path
    else
      render :new
    end
  end

  def new
    @category = Category.new
  end

  def edit
    @category = Category.find_by id: params[:id]
  end

  def update
    @category = Category.find_by id: params[:id]
    if @category.update_attributes category_params
      flash[:success] = "Đã cập nhật thông tin"
      redirect_to admin_categories_path
    else
      render :edit
    end
  end

  def destroy
    @category = Category.find_by(id: params[:id]).destroy
    flash[:success] = "Đã xóa hãng thành công"
    redirect_to admin_categories_path
  end

  private
  def category_params
    params.require(:category).permit :name
  end
end
