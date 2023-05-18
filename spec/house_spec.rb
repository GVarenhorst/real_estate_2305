require './lib/room'
require './lib/house'

RSpec.describe House do
  describe "Iteration 2" do
    it "exists" do

      house = House.new("$400000", "123 sugar lane")

      expect(house).to be_a(House)

    end

    it "has attributes" do

      house = House.new("$400000", "123 sugar lane")

      expect(house.price).to eq(400000)
      expect(house.address).to eq("123 sugar lane")
      expect(house.rooms).to eq([])
    end

    xit "can add rooms" do

      house = House.new("$400000", "123 sugar lane")

      house.add_room(room_1)
      house.add_room(room_2)

      expect(house.rooms).to eq([room_1, room_2])
    end
  end
end