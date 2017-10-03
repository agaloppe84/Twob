module ApplicationHelper
   def composed_plurname(type_name)
    if type_name.include? " "
      textarray = type_name.split
      if textarray.count > 2
        firstword = textarray[0]
        middleword = textarray[1]
        finalword = textarray[-1]
        plurfirstword = firstword.pluralize.capitalize
        return real_plurname = "#{plurfirstword} #{middleword} #{finalword}"
      elsif textarray.count <= 2
        firstword = textarray[0]
        finalword = textarray[-1]
        plurfirstword = firstword.pluralize.capitalize
        if finalword[-1] == "s"
          plurfinalword = finalword
        else
          plurfinalword = finalword.pluralize
        end
        return real_plurname = "#{plurfirstword} #{plurfinalword}"
      end
    elsif type_name.include? "-"
      textarray = type_name.split("-")
      if textarray.count > 2
        firstword = textarray[0]
        middleword = textarray[1]
        finalword = textarray[-1]
        plurfirstword = firstword.pluralize.capitalize
        return real_plurname = "#{plurfirstword}-#{middleword}-#{finalword}"
      elsif textarray.count <= 2
        firstword = textarray[0]
        finalword = textarray[-1]
        plurfirstword = firstword.pluralize.capitalize
        plurfinalword = finalword.pluralize
        return real_plurname = "#{plurfirstword}-#{plurfinalword}"
      end
    else
      if type_name.last(3) == "eau"
        cap_type_name = type_name.capitalize
        return real_plurname = "#{cap_type_name}x"
      else
        cap_type_name = type_name.pluralize.capitalize
        return real_plurname = "#{cap_type_name}"
      end
    end
  end

  def font_icon_dynamic
    @fontastic_icons = Info.iconsarray
  end

  def month_number_to_string(integer)
    if integer == 1
      "january"
    elsif integer == 2
      "february"
    elsif integer == 3
      "march"
    elsif integer == 4
      "april"
    elsif integer == 5
      "may"
    elsif integer == 6
      "june"
    elsif integer == 7
      "july"
    elsif integer == 8
      "august"
    elsif integer == 9
      "september"
    elsif integer == 10
      "october"
    elsif integer == 11
      "november"
    elsif integer == 12
      "december"
    end
  end

  def photos_for_carousel(collection)
    @photos = collection.map {|photo| cl_image_path photo.path}
  end


end
