class Rgb
  # 10進数の3つの数値を16進数の文字列に変換する
      def to_hex(r, g, b)
    [r, g, b].inject('#') do |hex, n|
      hex + n.to_s(16).rjust(2, '0')
    end
  end

  # 16進数の文字列を10進数の数値3つに変換する
  def to_ints(hex)
    r, g, b = hex[1..2], hex[3..4], hex[5..6]

    [r, g, b].map do |s|
      s.hex
    end
  end
end