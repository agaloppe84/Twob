class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!



  def string_as_keys(integer)
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

  def year_in_string
    @year = ["january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december"]
  end




  def sql_query(year, classname, param, grouper)
    @queries = {}
    @month_string_keys = {}
    @month_and_category_string_keys = {}
    @year_in_string = year_in_string
    @year_in_integer = (1..12)
    @typesname = grouper

    @queries[:group_by_month_and_category] = classname.capitalize.constantize.where('extract(year  from created_at) = ?', year).group(param).group('extract(month  from created_at)').count
    @queries[:group_by_month] = classname.capitalize.constantize.where('extract(year  from created_at) = ?', year).group('extract(month  from created_at)').count

    @queries[:group_by_month].each do |key, value|
      @month_string_keys[key.to_i] = value
    end

    @queries[:group_by_month_and_category].each do |key, value|
      @month_and_category_string_keys[[key[0],string_as_keys(key[-1].to_i)]] = value
    end

    @typesname.each do |type|
      @year_in_string.each do |month|
        if @month_and_category_string_keys.has_key?([type, month])
        else
          @month_and_category_string_keys[[type, month]] = 0
        end
      end
    end

    @year_in_integer.each do |month|
      if @month_string_keys.has_key?(month)
      else
        @month_string_keys[month] = 0
      end
    end

    @sorted_months = @month_string_keys.sort_by { |key, value| key }
    @sorted_months_by_category = @month_and_category_string_keys

    @test_hash = {}
    @sorted_months.each do |month_array|
      @test_hash[string_as_keys(month_array[0])] = month_array[-1]
    end

    @all_sorted_objects = {}
    @all_sorted_objects[:sorted_year] = @test_hash
    @all_sorted_objects[:by_category_and_month] = @sorted_months_by_category
    @all_sorted_objects
  end








end
