module PagesHelper
  def hour_to_percent(hour)
    @percent = ((hour/48) * 100).round(2)
  end

  def date_in_hour(date)
    @hours = (((date - DateTime.now)/60/60).round(2)).abs
  end

  def test_with_minute(date)
    @hours = (((date - DateTime.now)/60/60).round(3)).abs
    if @hours < 1
      @minutes_tempo = ((@hours.to_i) + @hours) * 100
      @minutes = ((60 * @minutes_tempo) / 100).to_i
    else
      @minutes_tempo = (@hours - (@hours.to_i)) * 100
      @minutes = ((60 * @minutes_tempo) / 100).to_i
    end

    if @hours.to_i < 1
      return @full = "#{@minutes} min"
    elsif @hours.to_i > 48
      return @full = "#{@hours.to_i} hr"
    else
      return @full = "#{@hours.to_i} h #{@minutes} m"
    end
  end

  def color_function_percent(percent)
    if percent.to_i >= 0 and percent.to_i <= 25
      @color = '#33CCCC'
    elsif percent.to_i > 25 and percent.to_i <= 50
      @color = '#28CC9E'
    elsif percent.to_i > 50 and percent.to_i <= 75
      @color = '#FC993C'
    elsif percent.to_i > 75 and percent.to_i <= 100
      @color = '#F05941'
    elsif percent.to_i > 100
      @color = '#FF4545'
    end
    return @color
  end

end
