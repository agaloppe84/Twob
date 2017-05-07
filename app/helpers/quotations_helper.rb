module QuotationsHelper
  def full_address(city, zipcode, address)
    @address = "#{address} #{zipcode} #{city.capitalize}"
  end

  def fullname(first, last)
    @fullname = "#{first.upcase} #{last.capitalize}"
  end

end
