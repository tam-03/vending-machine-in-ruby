class VendingMachine
  def initialize
    drink = []
    @drink = drink.push("コーラ") * 5
    @price = 120
    @drink_rest = @drink.size
    # hash = {drink: price}
  end

  def menu?
    puts "品名: #{@drink[0]}"
  end

  def price?
    puts "値段: #{@price}円"
  end

  def drink_rest?
    puts "在庫数: #{@drink_rest}個"
  end

  def buy?
    puts '購入出来ます' if @drink_rest > 1
    puts '購入出来ません' if @drink_rest == 0
  end

  def buy
    money_rest = Suica.new
  end
#Suicaで買える様にする機能
end

a = VendingMachine.new
a.menu?
a.price?
a.drink_rest?
a.buy?



class Suica
  def initialize
    money = 0
    @money = money
  end

  def charge(charge_money)
    puts "チャージ金額は100円以上からです。" if charge_money < 100
    @money = @money + charge_money
  end
  
  def rest?
    puts "残高は: #{@money}円です"
  end
end
a = Suica.new
a.charge(100)
a.rest?
