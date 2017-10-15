class CategoriesController < ApplicationController
  before_action :set_category, only: [:edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:show, :index]
  before_action :categories_names, only: [:new, :create]
  before_action :set_quotation, only: [:show, :index]
  before_action :set_score, only: [:show, :index]

  def index
    @categories = Category.eager_load(:albums, :promos, products: [:infos, :powers, :scores, :photo_files])
    @only_categories = Category.eager_load(:products)
    @category = @categories.first
    @query_category = (params[:category_id]).nil? ? "empty" : params[:category_id].to_i
  end

  def show
    @categories = Category.eager_load(:albums, :promos, products: [:infos, :powers, :scores, :photo_files])
    @category = @categories.find(params[:id])
    render layout: false
  end

  def new
    @category = Category.new
    render layout: false
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to dashboard_path, notice: "Nouvelle catégorie crée: #{@category.name}"
    else
      render :new
    end
  end

  def edit
    render layout: false
  end

  def update
    if @category.update(category_params)
      redirect_to dashboard_path, notice: "La catégorie #{@category.name} à été mise à jour"
    else
      render :new
    end
  end

  def destroy
    @category.destroy
    redirect_to dashboard_path, notice: "Catégorie effacée : #{@category.name}"
  end




  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :color, :guarantee, :has_sub_category)
  end

  def categories_names
    @category_names = Category.all.map { |category| category.name.capitalize }
  end

  def set_quotation
    @quotation = Quotation.new
  end

  def set_score
    @score = Score.new
  end

end
