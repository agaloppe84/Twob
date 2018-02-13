class PromosController < ApplicationController
  before_action :set_promo, only: [:show, :edit, :update, :destroy]
  before_action :find_category, only: [ :new, :create, :edit, :update, :destroy, :show ]
  before_action :set_discounts, only: [ :new, :edit ]
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @promos = Promo.all
    @better_promos = Promo.where("promos.start < ?", Time.current).where("promos.end > ?", Time.current)
    @active_promos = Promo.where(current: true)
    raise
    @promo_to_unckeck = @active_promos
    @unckecked_promos = @promo_to_unckeck.map {|promo| promo if promo.end < Date.today}.compact
    if @unckecked_promos.empty?
    else
      @unckecked_promos.map {|promo| automatic_unckecked_current(promo)}
    end
    @real_active_promos = Promo.where(current: true)
  end

  def show
  end

  def new
    @promo = Promo.new
    render layout: false
  end

  def create
    @promo = @category.promos.build(promo_params)
    if @promo.save
      redirect_to dashboard_path, notice: "La promo #{@promo.title} à été crée"
    else
      render :new
    end
  end

  def edit
    render layout: false
  end

  def update
    @promo.update(promo_params)
    redirect_to dashboard_path, notice: "La promo #{@promo.title} à été mise à jour"
  end

  def destroy
    @promo.destroy
    redirect_to dashboard_path, notice: "La promo #{@promo.title} à été effacée"
  end



  private

  def set_promo
    @promo = Promo.find(params[:id])
  end

  def set_discounts
    @discounts = ["10%", "20%", "30%", "40%", "50%", "60%", "70%", "80%"]
  end

  def find_category
    @category = Category.find(params[:category_id])
  end

  def automatic_unckecked_current(promo)
    promo.current = false
    promo.save
  end

  def promo_params
    params.require(:promo).permit(:title, :description, :start, :current, :end, :discount, :category_id, photos: [])
  end
end
