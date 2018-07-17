class ConvertLength
  def show_convert_length(length, unit_from, unit_to)
    units = {
        :m => 1.0,
        :ft => 3.28,
        :in => 39.37
    }

    # 端数は小数第3位で四捨五入する
    (length / units[unit_from] * units[unit_to]).round(2)
  end
end