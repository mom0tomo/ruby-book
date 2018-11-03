# 共通して使うメソッドをmoduleにまとめる
module Loggable

  def log(text)
    puts "[LOG] #{text}"
  end
end


class Product

  # Loggableモジュールのメソッドを特異メソッド（クラスメソッド）としてミックスインする
  extend Loggable

  def self.create_products(names)
    # logメソッドをクラスメソッド内で呼び出す
    # logメソッド自体もクラスメソッドになっている）
    log 'create_products is called.'
  end

  # logメソッドをクラス構文の直下で呼び出す
  # クラスが読み込まれるタイミングで、このlogメソッドも実行される
  log 'Defined Product class.'

  private

  def title
    log 'title is called.'
    'A great movie'
  end
end


class User

  # モジュールをクラスにincludeして機能を追加することをミックスインという
  include Loggable

  def name
    log 'name is called.'
    'Alice'
    end
end


product = Product. new
product.title
# => [LOG] title is called.
# "A great movie"


# クラスメソッド経由でlogメソッドが呼び出される
Product.create_products([])
# => [LOG] create_products is called.

# Productクラスのクラスメソッドとして直接呼び出すことも可能
Product.log('Hello.')
# => [LOG] Hello.


user = User. new
user. name
# => [LOG] name is called.
# # "Alice"