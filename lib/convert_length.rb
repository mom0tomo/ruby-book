class ConvertLength
  UNITS = {
      m: 1.0,
      ft: 3.28,
      in: 39.37
  }

  def show_convert_length(length, from:, to:)

    # 端数は小数第3位で四捨五入する
    (length / UNITS[from] * UNITS[to]).round(2)
  end
end