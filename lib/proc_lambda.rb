# Proc.newの作成と実行
add_proc = Proc.new { |a, b| a + b }
add_proc.call(10, 20)
# => 30


# ラムダの作成と実行
add_lambda =-> (a, b){ a + b }
add_lambda.call(10, 20)
# => 30


# Proc.newの場合（引数がnilでもエラーが起きないようにto_iメソッドを使う）
add_proc = Proc.new { |a, b| a.to_i + b.to_i }

# Proc.newは引数が1つまたは3つでも呼び出しが可能
add_proc.call(10)
# => 10

add_proc.call(10, 20, 100)
# => 30


# ラムダ の 場合
add_lambda =->(a, b) { a.to_i + b.to_i }

# ラムダは個数について厳密なので、引数が2個ちょうどでなければエラーになる
add_lambda.call(10)
# => ArgumentError: wrong number of arguments(given 1, expected 2)

add_lambda.call(10, 20, 30)
# => ArgumentError: wrong number of arguments(given 3, expected 2)
