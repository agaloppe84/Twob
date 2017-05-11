class ScoresController < ApplicationController
  before_action :find_product, only: [ :new, :create ]
  def new
    @score = Score.new
  end

  def create
    @score = @product.scores.build(score_params)
    if @score.save
      redirect_to categories_path
    else
      render :new
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
