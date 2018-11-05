# method_1 にだけ 例外処理 を 記述 する
def method_1
  puts 'method_1 start.'

  begin
    method_2
  rescue
    puts '例外 が 発生 し まし た'
  end

  puts 'method_1 end.'
end


def method_2
  puts 'method_2 start.'
  method_3

  puts 'method_2 end.'
end


def method_3
  puts 'method_3 start.'
  # ZeroDivisionErrorを発生させる
  1 / 0
  puts 'method_3 end.'
end


# 処理 を 開始 する
method_1

# => method_1 start.
# => method_2 start.
# => method_3 start.
# => 例外が発生しまし た
# => method_1 end.

# method_2とmethod_3は例外が発生した時点で処理が中断される
