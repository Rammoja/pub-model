class Customer

  attr_reader(:name, :wallet, :age)

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
  end

  def remove_money_from_wallet(amount)
    return @wallet -= (amount)
  end

  def add_money_to_wallet(amount)
    return @wallet += (amount)
  end

  def buy_drink_from_pub(customer, pub, drink)
    if customer.age >= 18
      pub.remove_drink_from_stock(drink)
      pub.add_to_till(drink.price)
      customer.remove_money_from_wallet(drink.price)
    else
      return nil
    end
  end
  




end
