module CategoriesHelper

  def guarantee_color(duration)
    if duration >= 1 and duration <= 5
      color = '#33CCCC'
    else
      color = '#FF4545'
    end
  end

  def power_icon(boolean, name)
    if boolean
      icon = "icon-#{name}"
    else
    end
  end

  def power_true(boolean)
    if boolean
      text = "cct-icon"
    else
    end
  end

  def average_score(collection)
    value = ((collection.map { |score| score.value.to_f }).reduce(:+)) / collection.count
    value.round(1)
  end

  def score_color(score)
    if score.to_i >= 0 and score.to_i <= 2
      @color = '#FF4545'
    elsif score.to_i > 2 and score.to_i <= 5
      @color = '#FF8426'
    elsif score.to_i > 5 and score.to_i <= 7
      @color = '#FFCD38'
    elsif score.to_i > 7 and score.to_i <= 10
      @color = '#4ED99C'
    end
    return @color
  end

end
