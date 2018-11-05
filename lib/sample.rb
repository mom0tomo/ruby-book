puts 'Start.'

module Greeter

  def hello
    'hello'
  end
end

begin
  greeter = Greeter.new
rescue
  puts '例外が発生しても実行を続ける'
end

puts 'End.'

