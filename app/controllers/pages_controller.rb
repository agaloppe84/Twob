class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :services, :devis, :contact, :promotions, :photos]

  def home
    @fontastic_icons = Info.iconsarray
    @products = Product.all
    @promos = Promo.all
    @albums = Album.all
    @last_promo = Promo.where(current: true).last
    @types = Category.all
    @random_album = @albums.all.map { |album| album.photos.sample(2) }
  end

  def services
  end

  def devis
  end

  def photos
    @albums = Album.all
  end

  def contact
  end

  def dashboard
    @products = Product.all
    @albums = Album.all
    @infos = Info.all
    @promos = Promo.all
    @types = Category.all
    @brands = Brand.all
    @photos = @albums.all.map { |album| album.photos.count }
  end

  def promotions
    @last_promo = Promo.all.last
  end

  def quotations_admin
    @quotations = Quotation.all.order(:id)
    @non_treated_quotas = @quotations.where(treated: false)
  end

  def pathfilter
  end


  def analytics
    @sql_test = Quotation.sql_query(2017, "quotation", :blindttype)
    @types_full_names = Category.all.map { |category| category.name.capitalize }
    @full_years = ["january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december"]
  end

end
