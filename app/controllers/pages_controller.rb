class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :services, :devis, :contact, :promotions, :photos]

  def home
    @fontastic_icons = Info.iconsarray
    @products = Product.all
    @promos = Promo.all
    @albums = Album.all
    @current_promos = Promo.where(current: true)
    @categories = Category.all

    @random_album = []
    @albums.each do |album|
      @random_album += album.photos.sample(2)
    end
    @random_album

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
    @categories = Category.all.order(:id)
    @brands = Brand.all
    @photos = @albums.all.map { |album| album.photos.count }
  end

  def promotions
    @last_promo = Promo.all.last
  end

  def quotations_admin
    @quotations = Quotation.all.order(:id)
    @non_treated_quotas = @quotations.where(treated: false)
    @treated_quotas = @quotations.where(treated: true)
    @all_emails = (Quotation.all.map { |quot| quot.email }).uniq!
  end

  def pathfilter
  end


  def analytics
    @sql_test = Quotation.sql_query(2017, "quotation", :blindtype)
    @types_full_names = Category.all.map { |category| category.name.capitalize }
    @full_years = ["january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december"]
  end

end
