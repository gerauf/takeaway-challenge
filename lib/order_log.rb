class OrderLog

  def initialize menu
    @menu = menu
    @current = []
  end

  def list
    current.inject(''){|sum,item| sum << "#{item.name}: #{item.price}\n"}
  end

  def add dish, quantity = 1
    quantity.times {@current << @menu.get(dish)}
  end

  def total
    @current.inject(0) {|sum,item| sum += item.price}
  end

  private
  attr_reader :current

end
