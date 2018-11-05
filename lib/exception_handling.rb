begin
  1/0
  rescue => e
    puts "エラークラス > #{e.class}"
    puts "エラーメッセージ > #{e.message}"
    puts '--以降バックトレース--'
    puts e.backtrace
end