def greeting_ja(&block)
  texts = ['おはよう', 'こんにちは', 'こんばんは']

  # ブロックを別のメソッドに引き渡す
  greeting_common(texts, &block)
end


def greeting_en(&block)
  texts = ['good morning', 'hello', 'good evening']

  # ブロックを別のメソッドに引き渡す
  greeting_common(texts, &block)
end


def greeting_common(texts, &block)
  puts texts[0]

  # ブロックを実行する
  puts block.call(texts[1])
  puts texts[2]
end


greeting_ja do |text|
  text * 2
end
# おはよう
# こんにちは こんにちは
# こんばんは


greeting_en do |text|
  text.upcase
end

# good morning
# HELLO
# good evening
