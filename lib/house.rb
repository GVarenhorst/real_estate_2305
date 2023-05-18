class House
  attr_reader :price,
              :address,
              :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def price
    @price.delete('$').to_i
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    self.price > 500000
  end

  def rooms_from_category(room)
    category_rooms = []
    # require 'pry'; binding.pry
    @rooms.select { |room| room.category == room }
    category_rooms << room
  end


end