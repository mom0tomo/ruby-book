class Rgb
  def to_hex(r, g, b)
    [r, g, b].inject('#') do |hex, n|
      hex + n.to_s(16).rjust(2, '0')
    end
  end

  def to_ints(hex)

  end
end