class QuotationsController < ApplicationController
  before_action :set_quotation, only: [:edit, :update, :destroy, :confirmation, :show]
  skip_before_action :authenticate_user!, only: [:new, :create, :confirmation]
  before_action :set_category_name, only: [:new, :create]


  def index
    @quotations = Quotation.all
  end

  def show
    render layout: false
  end

  def new
    @quotation = Quotation.new
    if params[:product_name].nil? and params[:blindtype].nil?
      @coming_from_product = false
      @product_name = "SAV"
    else
      @coming_from_product = true
      @product_name = params[:product_name]
      @product_category_name = params[:blindtype]
      @current_category = Category.all.where(name: params[:blindtype]).last
      if @current_category.promos.any?
        @current_category_current_promo = @current_category.promos.where(current: true).last
      else
        @current_category_current_promo = "test"
      end
    end
  end

  def create
    @quotation = Quotation.new(quotation_params)
    if @quotation.save
      # QuotationMailer.success(@quotation).deliver_now
      redirect_to controller: 'quotations', action: 'confirmation', id: @quotation.id
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @quotation.update(quotation_params)
      redirect_to quotations_admin_path
    else
      render :new
    end
  end

  def destroy
    @quotation.destroy
    redirect_to dashboard_path, notice: "Devis effacé : #{@quotation.id}"
  end

  def confirmation
  end



  private


  def set_quotation
    @quotation = Quotation.find(params[:id])
  end

  def quotation_params
    params.require(:quotation).permit(:email, :lastname, :firstname, :city, :phone, :zipcode, :blindtype, :message, :address, :treated, :product_name)
  end

  def set_category_name
    @category_names = Category.all.map { |category| category.name.capitalize }
    @category_names << "Catégorie de produit"
    @category_names = @category_names.reverse
  end

end
