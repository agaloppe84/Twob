class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @categories = Category.all
    @tab = params[:anchor]
    @score = Score.new
  end

  def show
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
    params.require(:category).permit(:name, :color, :guarantee)
  end

end
