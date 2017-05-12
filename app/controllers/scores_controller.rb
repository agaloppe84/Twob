class ScoresController < ApplicationController
  before_action :find_product, only: [ :create ]
  skip_before_action :authenticate_user!, only: [:create]

  def new
    @score = Score.new
  end

  def create
    @score = @product.scores.build(score_params)
    if @score.save
      respond_to do |format|
        format.html { redirect_to categories_path }
        format.js  # <-- will render `app/views/scores/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'categories/index' }
        format.js  # <-- idem
      end
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
