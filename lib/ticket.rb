class Ticket
  attr_reader :fare, :stamped_at

  def stamp(name)
    @stamped_at = name
  end

  def initialize(fare)
    # 購入額
    @fare = fare
  end
end