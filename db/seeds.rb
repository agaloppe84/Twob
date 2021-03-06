
MODELS = [Category, Brand, Album, Info, Power, Promo, Product, Quotation, User, Score]

MODELS.each do |mod|
  mod.destroy_all
end

puts "Destroying all model instances"
puts "Erase models : #{MODELS.count}"



puts "--------------------Création du seed - START--------------------"



# ------------------------- Création des users ------------------------- #

  puts "START - Création des users"

    user1 = User.create!(email: 'agaloppe@me.com', password: '1234soleil')
    user2 = User.create!(email: 'audric.agalops@gmail.com', password: '1234soleil')

    puts "----------------------------------------------------"
    puts "USERS"
    puts " "

    User.all.each_with_index do |user, index|
      puts "** #{index + 1} **/ Email: #{user.email} / Password: #{user.password}"
    end

    puts " "
    puts "Nombre de users : #{User.all.count}"
    puts "----------------------------------------------------"

  puts "END - Création des users"

# ------------------------- Création des users ------------------------- #





# ------------------------- Création des types de stores ------------------------- #

puts "START - Création des types de stores"

    moustiquaire =      Category.create!(name: 'moustiquaire', color:'#007CB9', guarantee: 3)
    porte_de_garage =   Category.create!(name: 'porte de garage', color:'#007CB9', guarantee: 2)
    store_interieur =   Category.create!(name: 'store interieur', color:'#007CB9', guarantee: 5)
    store_exterieur =   Category.create!(name: 'store exterieur', color:'#007CB9', guarantee: 5)
    menuiserie =        Category.create!(name: 'menuiserie', color:'#007CB9', guarantee: 8)
    pergola =           Category.create!(name: 'pergola', color:'#007CB9', guarantee: 10)
    volet_roulant =     Category.create!(name: 'volet roulant', color:'#007CB9', guarantee: 1, has_sub_category: true)

    puts "----------------------------------------------------"
    puts "CATEGORIES"
    puts " "

    Category.all.each_with_index do |category, index|
      puts "** #{index + 1} **/ Nom: #{category.name} / Couleur: #{category.color}"
    end

    puts " "
    puts "Nombre de categories : #{Category.all.count}"
    puts "----------------------------------------------------"


puts "END - Création des types de stores"

# ------------------------- Création des types de stores ------------------------- #





# ------------------------- Création des stores ------------------------- #

puts "START - Création des stores"

    # ---- Création des moustiquaires ---- #

    mousty01 = Product.create!(title: 'Moustiquaire plissée', category: moustiquaire , description: 'Plisséa est la moustiquaire idéale pour porte et baies vitrées', photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
    mousty02 = Product.create!(title: 'Moustiquaire enroulable', category: moustiquaire , description: 'Saga est une moustiquaire à enroulement vertical pour les fenêtres ou à enroulement latéral pour les portes', photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
    mousty03 = Product.create!(title: 'Moustiquaire à battant', category: moustiquaire , description: "Classique , la moustiquaire à battant Altesse se manoeuvre avec légèreté quel que soit le sens d'ouverture choisi", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])

    # ---- Création des moustiquaires ---- #



    # ---- Création des portes de garage ---- #

    porto01 = Product.create!(title: 'Sectionnelles', category: porte_de_garage , description: "Confort , design et technicité , decouvrez des modèles répondant à des besoins essentiels de sécurité", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
    porto02 = Product.create!(title: 'Traditionnelles', category: porte_de_garage , description: "Une vaste gamme sur mesure , traditionnelles , enroulables ou modernes répondant à tous les projets", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])

    # ---- Création des portes de garage ---- #



    # ---- Création des stores interieurs ---- #

    inte01 = Product.create!(title: 'Stores Silhouette', category: store_interieur , description: "Doux jeux de lumières au gré de vos envies", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
    inte02 = Product.create!(title: 'Voiles Facette', category: store_interieur , description: "Tissu doux pour un dosage subtil de la lumière", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
    inte03 = Product.create!(title: 'Stores Duette', category: store_interieur , description: "Filtrez la lumière et isolez votre maison toute l'année", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
    inte04 = Product.create!(title: 'Stores Plissé', category: store_interieur , description: "Décoratifs et complices de votre maison", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
    inte05 = Product.create!(title: 'Stores Textiles', category: store_interieur , description: "Des tissus décoratifs , fabriqués sur mesure", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
    inte06 = Product.create!(title: 'Stores Vénitiens', category: store_interieur , description: "Modulez la lumière avec un design classique", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
    inte07 = Product.create!(title: 'Stores Vénitiens Bois', category: store_interieur , description: "La chaleur et la beauté de la nature dans votre maison", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
    inte08 = Product.create!(title: 'Stores Rouleaux', category: store_interieur , description: "Une touche personnelle pour marquer votre style", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
    inte09 = Product.create!(title: 'Stores Rouleaux Twist', category: store_interieur , description: "Variations de lumière pour une multitudes d'ambiances", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
    inte10 = Product.create!(title: 'Stores à Bandes Verticales', category: store_interieur , description: "Elégance en toute simplicité pour les larges baies", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])

    # ---- Création des stores interieurs ---- #



    # ---- Création des stores exterieurs ---- #

    exte01 = Product.create!(title: 'Stores coffres', category: store_exterieur , description: "Design , robuste , le store coffre peut couvrir une largeur de près de 12m", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
    exte02 = Product.create!(title: 'Stores Monoblocs', category: store_exterieur , description: "Armature thermolaquée assurant à la fois résistance et discrétion", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
    exte03 = Product.create!(title: 'Stores Loggia', category: store_exterieur , description: "Pour une occultation presque totale de vos fenêtres", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
    exte04 = Product.create!(title: 'Stores Bannette', category: store_exterieur , description: "Adaptés aux grandes surfaces vitrées", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
    exte05 = Product.create!(title: 'Abris 2 pentes', category: store_exterieur , description: "Profitez de votre jardin en été sans avoir à souffrir du soleil", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])

    # ---- Création des stores exterieurs ---- #



    # ---- Création des menuiseries ---- #

    menui01 = Product.create!(title: 'Menui 1', category: menuiserie , description: 'test', photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
    menui02 = Product.create!(title: 'Menui 2', category: menuiserie , description: 'test', photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
    menui03 = Product.create!(title: 'Menui 3', category: menuiserie , description: 'test', photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
    menui04 = Product.create!(title: 'Menui 4', category: menuiserie , description: 'test', photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
    menui05 = Product.create!(title: 'Menui 5', category: menuiserie , description: 'test', photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])

    # ---- Création des menuiseries ---- #



    # ---- Création des pergolas ---- #

    pergo01 = Product.create!(title: 'Pergolas toiles', category: pergola , description: "Entrez dans un nouvel univers , où intérieur et extérieur se confondent", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
    pergo02 = Product.create!(title: 'Pergolas Bioclimatiques', category: pergola , description: "Profitez d'un espace extérieur protégé", photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])

    # ---- Création des pergolas ---- #



    # ---- Création des volets roulants ---- #

    volet01 = Product.create!(title: 'Volet 1', category: volet_roulant, sub_category: 0, description: 'test', photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
    volet02 = Product.create!(title: 'Volet 2', category: volet_roulant, sub_category: 0, description: 'test', photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
    volet03 = Product.create!(title: 'Volet 3', category: volet_roulant, sub_category: 1, description: 'test', photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
    volet04 = Product.create!(title: 'Volet 4', category: volet_roulant, sub_category: 1, description: 'test', photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
    volet05 = Product.create!(title: 'Volet 5', category: volet_roulant, sub_category: 1, description: 'test', photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])

    # ---- Création des volets roulants ---- #



    # ---- Affichage ---- #

      Category.all.each_with_index do |cat, i1|
        puts "----------------------------------------------------"
        puts "#{i1 + 1} - #{cat.name.upcase}"
        puts " "
        cat.products.each_with_index do |prod, i2|
          puts "** #{i2 + 1} **/ #{prod.title}"
        end
        puts " "
      end

      puts "Nombre de produits : #{Product.all.count}"
      puts "----------------------------------------------------"

    # ---- Affichage ---- #


puts "END - Création des stores"

# ------------------------- Création des stores ------------------------- #






# ------------------------- Création des scores ------------------------- #

puts "START - Création des Scores"

@all_products = Product.all

@all_products.each_with_index do |product, i|
  puts "** #{i + 1} ** / #{product.title}"
  puts "-- #{product.category.name} --"
  puts "----------------------------------------------"
  5.times do
    @random_number = rand((1..10))
    Score.create!(value: @random_number, product: product)
    puts "Score : #{@random_number}"
  end
  puts "----------------------------------------------"
  puts " "
end

puts "END - Création des scores"

# ------------------------- Création des scores ------------------------- #








# --------------------- PARAMS MOUSTIQUAIRES ------------------------------ #

puts "START - Création des infos"

title1 = "Matériau"
title2 = "Profils"
title3 = "Cadre"

content1 = "Fils de polyester enrobés de pvc"
content2 = "Aluminium"
content3 = "+ de 200 coloris"
content4 = "Exclusivement en pose tableau"
content5 = "Faible encombrement"
content6 = "Livrée avec des poignées et un guide bas"

# ------------------------- INFOS - Moustiquaires ------------------------- #

    # Moustiquaire plissée
    Info.create!(title: title1, content: content1, product: mousty01 , icon: 'icon-fold')
    Info.create!(title: title2, content: content2, product: mousty01 , icon: 'icon-fold')
    Info.create!(title: title3, content: content3, product: mousty01 , icon: 'icon-fold')
    Info.create!(content: content4, product: mousty01 , icon: 'icon-fold')
    Info.create!(content: content5, product: mousty01 , icon: 'icon-fold')
    Info.create!(content: content6, product: mousty01 , icon: 'icon-fold')

    # Moustiquaire enroulable
    Info.create!(title: title1, content: content1, product: mousty02 , icon: 'icon-fold')
    Info.create!(title: title2, content: content2, product: mousty02 , icon: 'icon-fold')
    Info.create!(title: 'titre', content: 'valeur', product: mousty02 , icon: 'icon-fold')
    Info.create!(title: 'titre', content: 'valeur', product: mousty02 , icon: 'icon-fold')
    Info.create!(title: 'titre', content: 'valeur', product: mousty02 , icon: 'icon-fold')
    Info.create!(title: 'titre', content: 'valeur', product: mousty02 , icon: 'icon-fold')

    # Moustiquaire battant
    Info.create!(title: 'titre', content: 'valeur', product: mousty03 , icon: 'icon-fold')
    Info.create!(title: 'titre', content: 'valeur', product: mousty03 , icon: 'icon-fold')
    Info.create!(title: 'titre', content: 'valeur', product: mousty03 , icon: 'icon-fold')
    Info.create!(title: 'titre', content: 'valeur', product: mousty03 , icon: 'icon-fold')
    Info.create!(title: 'titre', content: 'valeur', product: mousty03 , icon: 'icon-fold')
    Info.create!(title: 'titre', content: 'valeur', product: mousty03 , icon: 'icon-fold')


# ------------------------- INFOS - Moustiquaires ------------------------- #


# ------------------------- INFOS - Portes de garage ------------------------- #

    # Sectionnelles
    Info.create!(title: 'info', content: 'info-test', product: porto01 , icon: 'icon-fold')

    # Traditionnelles
    Info.create!(title: 'info', content: 'info-test', product: porto02 , icon: 'icon-fold')


# ------------------------- INFOS - Portes de garage ------------------------- #


# ------------------------- INFOS - Stores intérieurs ------------------------- #

    # Silhouette
    Info.create!(title: 'info', content: 'info-test', product: inte01 , icon: 'icon-fold')

    # Facettes
    Info.create!(title: 'info', content: 'info-test', product: inte02 , icon: 'icon-fold')

    # Duettes
    Info.create!(title: 'info', content: 'info-test', product: inte03 , icon: 'icon-fold')

    # Plissée
    Info.create!(title: 'info', content: 'info-test', product: inte04 , icon: 'icon-fold')

    # Textiles
    Info.create!(title: 'info', content: 'info-test', product: inte05 , icon: 'icon-fold')

    # Vénitiens
    Info.create!(title: 'info', content: 'info-test', product: inte06 , icon: 'icon-fold')

    # Vénitiens bois
    Info.create!(title: 'info', content: 'info-test', product: inte07 , icon: 'icon-fold')

    # Rouleaux
    Info.create!(title: 'info', content: 'info-test', product: inte08 , icon: 'icon-fold')

    # Rouleaux twist
    Info.create!(title: 'info', content: 'info-test', product: inte09 , icon: 'icon-fold')

    # Stores a bandes verticales
    Info.create!(title: 'info', content: 'info-test', product: inte10 , icon: 'icon-fold')

# ------------------------- INFOS - Stores intérieurs ------------------------- #



# ------------------------- INFOS - Stores exterieurs ------------------------- #

    Info.create!(title: 'info', content: 'info-test', product: exte01 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: exte02 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: exte03 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: exte04 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: exte05 , icon: 'icon-fold')

# ------------------------- INFOS - Stores exterieurs ------------------------- #



# ------------------------- INFOS - Menuiseries ------------------------- #

    Info.create!(title: 'info', content: 'info-test', product: menui01 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: menui02 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: menui03 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: menui04 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: menui05 , icon: 'icon-fold')

# ------------------------- INFOS - Menuiseries ------------------------- #



# ------------------------- INFOS - Pergolas ------------------------- #

    Info.create!(title: 'info', content: 'info-test', product: pergo01 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: pergo01 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: pergo01 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: pergo01 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: pergo02 , icon: 'icon-fold')

# ------------------------- INFOS - Pergolas ------------------------- #



# ------------------------- INFOS - Volets roulants ------------------------- #

    Info.create!(title: 'info', content: 'info-test', product: volet01 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: volet02 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: volet03 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: volet04 , icon: 'icon-fold')
    Info.create!(title: 'info', content: 'info-test', product: volet05 , icon: 'icon-fold')

# ------------------------- INFOS - Volets roulants ------------------------- #


puts "Création des infos - END"





puts "Création des pouvoirs - START"

# ------------------------- POUVOIRS - Moustiquaires ------------------------- #

    pow_mous_01 = Power.create!(product: mousty01 , sun: false, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: false, taxsaver: false, insects: false, security: false, inside: true, outside: false, certification: false)
    pow_mous_02 = Power.create!(product: mousty02 , sun: false, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: false, taxsaver: false, insects: false, security: false, inside: true, outside: false, certification: false)
    pow_mous_03 = Power.create!(product: mousty03 , sun: false, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: false, taxsaver: false, insects: false, security: false, inside: true, outside: false, certification: false)

# ------------------------- POUVOIRS - Moustiquaires ------------------------- #
    puts "----------------------------------------------------"
    puts "----------------------------------------------------"
    puts "----------------------------------------------------"
    puts "POUVOIRS / MOUSTIQUAIRE / #{mousty01.title}"
    puts "----------------------------------------------------"
    puts "** 1 **/ Soleil : #{pow_mous_01.sun}"
    puts "** 2 **/ Pluie : #{pow_mous_01.rain}"
    puts "** 3 **/ Vent : #{pow_mous_01.wind}"
    puts "** 4 **/ Froid : #{pow_mous_01.cold}"
    puts "** 5 **/ Chaud : #{pow_mous_01.hot}"
    puts "----------------------------------------------------"
    puts "POUVOIRS / MOUSTIQUAIRE / #{mousty02.title}"
    puts "----------------------------------------------------"
    puts "** 1 **/ Soleil : #{pow_mous_02.sun}"
    puts "** 2 **/ Pluie : #{pow_mous_02.rain}"
    puts "** 3 **/ Vent : #{pow_mous_02.wind}"
    puts "** 4 **/ Froid : #{pow_mous_02.cold}"
    puts "** 5 **/ Chaud : #{pow_mous_02.hot}"
    puts "----------------------------------------------------"
    puts "POUVOIRS / MOUSTIQUAIRE / #{mousty03.title}"
    puts "----------------------------------------------------"
    puts "** 1 **/ Soleil : #{pow_mous_03.sun}"
    puts "** 2 **/ Pluie : #{pow_mous_03.rain}"
    puts "** 3 **/ Vent : #{pow_mous_03.wind}"
    puts "** 4 **/ Froid : #{pow_mous_03.cold}"
    puts "** 5 **/ Chaud : #{pow_mous_03.hot}"
    puts "----------------------------------------------------"
    puts "----------------------------------------------------"
    puts "----------------------------------------------------"



# ------------------------- POUVOIRS - Portes de garage ------------------------- #

    pow_pdg_01 = Power.create!(product: porto01 , sun: false, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: false, outside: false, certification: false)
    pow_pdg_02 = Power.create!(product: porto02 , sun: false, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: false, outside: false, certification: false)

# ------------------------- POUVOIRS - Portes de garage ------------------------- #
    puts "----------------------------------------------------"
    puts "----------------------------------------------------"
    puts "----------------------------------------------------"
    puts "POUVOIRS / PORTES DE GARAGES / #{porto01.title}"
    puts "----------------------------------------------------"
    puts "** 1 **/ Soleil : #{pow_pdg_01.sun}"
    puts "** 2 **/ Pluie : #{pow_pdg_01.rain}"
    puts "** 3 **/ Vent : #{pow_pdg_01.wind}"
    puts "** 4 **/ Froid : #{pow_pdg_01.cold}"
    puts "** 5 **/ Chaud : #{pow_pdg_01.hot}"
    puts "----------------------------------------------------"
    puts "POUVOIRS / PORTES DE GARAGES / #{porto02.title}"
    puts "----------------------------------------------------"
    puts "** 1 **/ Soleil : #{pow_pdg_02.sun}"
    puts "** 2 **/ Pluie : #{pow_pdg_02.rain}"
    puts "** 3 **/ Vent : #{pow_pdg_02.wind}"
    puts "** 4 **/ Froid : #{pow_pdg_02.cold}"
    puts "** 5 **/ Chaud : #{pow_pdg_02.hot}"
    puts "----------------------------------------------------"
    puts "----------------------------------------------------"
    puts "----------------------------------------------------"


# ------------------------- POUVOIRS - Stores intérieurs ------------------------- #

    Power.create!(product: inte01 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: inte02 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: inte03 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: inte04 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: inte05 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)

# ------------------------- POUVOIRS - Stores intérieurs ------------------------- #



# ------------------------- POUVOIRS - Stores exterieurs ------------------------- #

    Power.create!(product: exte01 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: exte02 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: exte03 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: exte04 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: exte05 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)

# ------------------------- POUVOIRS - Stores exterieurs ------------------------- #



# ------------------------- POUVOIRS - Menuiseries ------------------------- #

    Power.create!(product: menui01 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: true)
    Power.create!(product: menui02 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: true)
    Power.create!(product: menui03 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: true)
    Power.create!(product: menui04 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: true)
    Power.create!(product: menui05 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: true)

# ------------------------- POUVOIRS - Menuiseries ------------------------- #



# ------------------------- POUVOIRS - Pergolas ------------------------- #


    Power.create!(product: pergo01 , sun: true, rain: true, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: pergo02 , sun: true, rain: true, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)


# ------------------------- POUVOIRS - Pergolas ------------------------- #



# ------------------------- POUVOIRS - Volets roulants ------------------------- #


    Power.create!(product: volet01 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: volet02 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: volet03 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: volet04 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: volet05 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)


# ------------------------- POUVOIRS - Volets roulants ------------------------- #


puts "Création des pouvoirs - END"
































# ------------------------- Création des albums ------------------------- #

puts "START - Création des albums"

    Album.create!(name: 'porte de garage', category: porte_de_garage, photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1472658802/asbzfjhqc7xyspqoolxn.jpg","http://res.cloudinary.com/agaloppe84/image/upload/v1456127547/sample.jpg"])
    Album.create!(name: 'store exterieur', category: store_exterieur, photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1472658802/asbzfjhqc7xyspqoolxn.jpg","http://res.cloudinary.com/agaloppe84/image/upload/v1456127547/sample.jpg"])
    Album.create!(name: 'store interieur', category: store_interieur, photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1472658802/asbzfjhqc7xyspqoolxn.jpg","http://res.cloudinary.com/agaloppe84/image/upload/v1456127547/sample.jpg"])
    Album.create!(name: 'pergola', category: pergola, photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1472658802/asbzfjhqc7xyspqoolxn.jpg","http://res.cloudinary.com/agaloppe84/image/upload/v1456127547/sample.jpg"])
    Album.create!(name: 'menuiserie', category: menuiserie, photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1472658802/asbzfjhqc7xyspqoolxn.jpg","http://res.cloudinary.com/agaloppe84/image/upload/v1456127547/sample.jpg"])
    Album.create!(name: 'volet roulant', category: volet_roulant, photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1472658802/asbzfjhqc7xyspqoolxn.jpg","http://res.cloudinary.com/agaloppe84/image/upload/v1456127547/sample.jpg"])
    Album.create!(name: 'moustiquaire', category: moustiquaire, photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1472658802/asbzfjhqc7xyspqoolxn.jpg","http://res.cloudinary.com/agaloppe84/image/upload/v1456127547/sample.jpg"])

puts "END - Création des albums"

# ------------------------- Création des albums ------------------------- #







# ------------------------- Création des Promos ------------------------- #

puts "START - Création des promos"

    Promo.create!(title: 'moustiquaire', discount: '20%', description: "promo-test", start: Date.today + 2.months, end: Date.today + 3.months, category: moustiquaire, current: true, photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1472658802/asbzfjhqc7xyspqoolxn.jpg","http://res.cloudinary.com/agaloppe84/image/upload/v1456127547/sample.jpg"])
    Promo.create!(title: 'pergola', discount: '30%', description: "promo-test", start: Date.today + 3.months, end: Date.today + 4.months, category: pergola, current: true, photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1472658802/asbzfjhqc7xyspqoolxn.jpg","http://res.cloudinary.com/agaloppe84/image/upload/v1456127547/sample.jpg"])

puts "END - Création des promos"

# ------------------------- Création des Promos ------------------------- #






# ------------------------- Création des marques ------------------------- #

puts "START - Création des marques"

    coublanc =      Brand.create!(name: 'coublanc', product: exte01, logo_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1471805960/v9g44efftzca2auuhelb.jpg')
    luxaflex =      Brand.create!(name: 'luxaflex', product: mousty02, logo_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1471805960/v9g44efftzca2auuhelb.jpg')
    franceferm =    Brand.create!(name: 'france fermetures', product: pergo01, logo_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1471805960/v9g44efftzca2auuhelb.jpg')
    franciaflex =   Brand.create!(name: 'franciaflex',  product: porto02, logo_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1471805960/v9g44efftzca2auuhelb.jpg')



# ------------------------- Création des marques ------------------------- #
    puts "----------------------------------------------------"
    puts "MARQUES"
    puts "----------------------------------------------------"
    puts "** 1 **/ #{coublanc.name}"
    puts "** 2 **/ #{luxaflex.name}"
    puts "** 3 **/ #{franceferm.name}"
    puts "** 4 **/ #{franciaflex.name}"
    puts "----------------------------------------------------"




puts "Création des marques - END"












puts "Création du seed - END"
