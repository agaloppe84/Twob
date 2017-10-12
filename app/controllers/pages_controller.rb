class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :services, :devis, :contact, :promotions, :photos, :ajaxform]
  before_action :set_category_name, only: [:home]

  def home
    @fontastic_icons = Info.iconsarray
    @albums = Album.all
    @current_promos = Promo.where(current: true)

    if params[:home_choice] != nil
      if params[:home_choice][:product_choice] == "Produits"
        redirect_to categories_path
      else
        @user_choice = params[:home_choice][:product_choice]
        @current_category = Category.all.where(name: @user_choice).last
        redirect_to filtered_category_path(@current_category)
      end
    end

    @random_album = []
    @albums.each do |album|
      @random_album += album.photos.sample(2)
    end
    @random_album
    @home_content = [{title: "L'enseigne", content: "Les artisans du store dans le Rhône, c'est plus de 25 ans d'expérience à votre service. Venez nous rendre visite dans notre espace 'découverte' afin de connaître notre large gamme de stores, fermetures et de protections contre le soleil. Nous effectuons la fourniture et la pose de stores extérieurs et intérieurs, moustiquaires, volets roulants, portes de garages. Un technicien se déplace à domicile sur rendez-vous gratuitement et sans engagement et peut ainsi vous aider dans votre choix.", options: ["fournisseurs", "services"]},
                     {title: "la boutique", content: "Depuis le 1er juin 2014 la Boutique du store de l’Arbresle (installée depuis 2007) change de nom commercial et devient les artisans du store. Nos équipes et nos garanties restent les mêmes, seul le nom change. Animée par cette même volonté d'efficacité, aujourd'hui comme dans le passé, l'équipe des artisans du store met sa connaissance du marché, son savoir-faire au service de votre bien-être et de votre tranquillité. Les artisans du store vous apportent le conseil adéquat à votre projet.", options: ["produits", "promos"]}]
  end

  def services
  end

  def ajaxform
    @quotation = Quotation.new
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
    @categories = Category.eager_load(:albums, :promos, products: [:infos, :powers, :scores, :photo_files, :brands])
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
    @types_full_names = Category.all.map { |category| category.name.capitalize }
    @sql_test = sql_query(2017, "quotation", :blindtype, @types_full_names)
    @full_years = year_in_string
  end

  private

  def set_category_name
    @category_names = Category.all.map { |category| category.name.downcase }
    @category_names << "Produits"
    @category_names = @category_names.reverse
  end

end
