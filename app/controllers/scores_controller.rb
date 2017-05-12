class ScoresController < ApplicationController
  before_action :find_product, only: [ :create ]
  skip_before_action :authenticate_user!, only: [:create]

  def new
    @score = Score.new
  end

  def create
    @score = @product.scores.build(score_params)
    if @score.save
      redirect_to categories_path
    else
      render 'categories/index'
    end
  end

  private

  def score_params
    params.require(:score).permit(:value, :product_id)
  end
  def find_product
    @product = Product.find(params[:product_id])
  end
end
