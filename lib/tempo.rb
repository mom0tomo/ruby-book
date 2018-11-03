class Tempo

  include Comparable

  attr_reader :bgm

  def initialize(bgm)
    @bgm = bgm
  end

  def <=>(other)
    if other.is_a?(Tempo)

      bgm <=> other.bgm
    else
      nil
    end
  end

  def inspect
    "#{bgm}bgm"
  end
end

t_120 = Tempo.new(120)
# => 120 bpm
t_180 = Tempo.new(180)
# => 180 bpm
t_120 > t_180
# => false
t_120 <= t_180
# => true
t_120 == t_180
# => false
