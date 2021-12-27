require "csv"

puts "1(新規でメモを作成) 2(既存のメモを編集する)"
memo_type = gets.to_i

puts "拡張子を除いたファイル名を入力してください"
memo_name = gets.to_s.chomp

puts "メモしたい内容を記入してください"
puts "完了したらCtrl + Dを押してください"

if memo_type == 1
  CSV.open("#{memo_name}.csv", "w") do |csv|
    input = $stdin.read
    csv << ["#{input}"]
  end

elsif memo_type == 2
  CSV.open("#{memo_name}.csv", "a") do |csv|
    input = $stdin.read
    csv << ["#{input}"]
  end

else
  puts "1または2を入力してください"

end

