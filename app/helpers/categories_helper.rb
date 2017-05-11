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

end
