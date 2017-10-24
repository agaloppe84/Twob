module CategoriesHelper

  def guarantee_color(duration)
    if duration >= 1 and duration <= 5
      '#33CCCC'
    else
      '#FF4545'
    end
  end

  def power_icon(boolean, name)
    if boolean
      "icon-#{name}"
    else
    end
  end

  def power_true(boolean)
    if boolean
      "cct-icon"
    else
    end
  end

  def average_score(collection)
    if collection.length == 0
      0.0
    else
      (((collection.map { |score| score.value.to_f }).reduce(:+)) / collection.length).round(1)
    end
  end

  def score_color(score)
    if score.to_i >= 0 and score.to_i <= 2
      '#FF4545'
    elsif score.to_i > 2 and score.to_i <= 5
      '#FF8426'
    elsif score.to_i > 5 and score.to_i <= 7
      '#FFCD38'
    elsif score.to_i > 7 and score.to_i <= 10
      '#4ED99C'
    end
  end

  def power_in_french(power)
    if power == "cold"
      "Froid"
    elsif power == "hot"
      "Chaleur"
    elsif power == "inside"
      "Intérieur"
    elsif power == "outside"
      "Extérieur"
    elsif power == "certification"
      "Certification"
    elsif power == "humidity"
      "Humidité"
    elsif power == "energysaver"
      "Economie d'energie"
    elsif power == "taxsaver"
      "Remise d'impôt"
    elsif power == "security"
      "Sécurité"
    elsif power == "sun"
      "Soleil"
    elsif power == "rain"
      "Pluie"
    else
      "Not found"
    end
  end

  def active_powers(power_collection, full, icon_tag, text_tag, product)
    @active_powers = (power_collection.last.attributes.map {|attr| attr[0] if attr[-1] == true}).compact
    if full == true
      @active_powers_tags = @active_powers.map {|power| ("<div class='icon-#{power} #{icon_tag}' style='color: #{product.category.color};'></div><div class='#{text_tag}'>#{power_in_french(power)}</div>").html_safe}
    else
      @active_powers_tags = @active_powers.last(3).map {|power| ("<div class='icon-#{power} #{icon_tag}' style='color: #{product.category.color};'></div><div class='#{text_tag}'>#{power_in_french(power)}</div>").html_safe}
    end
    @active_powers_tags
  end


  def infos_constructor(infos_collection, container_tag, content_tag, title_tag)
    @infos = (infos_collection.map {|info| [info.attributes["title"], info.attributes["content"]]}).reverse
    @infos_tags = @infos.map do |info|
      if info[0].nil?
        ("<div class='#{container_tag}'><div class='#{content_tag}'>#{info[-1]}</div></div>").html_safe
      else
        ("<div class='#{container_tag}'><div class='#{title_tag}'>#{info[0]} :</div><div class='#{content_tag}'>#{info[-1]}</div></div>").html_safe
      end
    end
    @infos_tags
  end


end


