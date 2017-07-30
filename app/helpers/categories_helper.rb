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

  def active_powers(power_collection)
    @active_powers = (power_collection.last.attributes.map {|attr| attr[0] if attr[-1] == true}).compact
    @active_powers_tags = @active_powers.map {|power| ("<div class='cct-icon icon-#{power}'></div>").html_safe}
    @active_powers_tags
  end

  def infos_constructor(infos_collection, container_tag, content_tag)
    @infos = (infos_collection.map {|info| [info.attributes["title"], info.attributes["content"]]}).reverse
    @infos_tags = @infos.map do |info|
      if info[0].nil?
        ("<div class='#{container_tag}'><div class='little-dot'></div><div class='#{content_tag}'>#{info[-1]}</div></div>").html_safe
      else
        ("<div class='#{container_tag}'><div class='little-dot'></div><div class='ccm-info-title'>#{info[0]}:</div><div class='#{content_tag}'>#{info[-1]}</div></div>").html_safe
      end
    end
    @infos_tags
  end


end


