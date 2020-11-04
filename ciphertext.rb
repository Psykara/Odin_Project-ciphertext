puts "Entre a phrase : "
str = gets.chomp
puts "Enter a number : "
num = gets.chomp
alp = [*'A'..'Z', *'a'..'z']
new_c = ''
str.split('').each do |c|
  if alp.include?(c) and c.ord <= 122 and c.ord >= 97
    new_c = c.ord + num.to_i
    if new_c > 122
      new_c = new_c - 122 + 97
    end
    print new_c.chr
  elsif alp.include?(c) and c.ord <= 90
    new_c = c.ord + num.to_i
    if new_c >= 90
      new_c = new_c - 90 + 64
    end
    print new_c.chr
  else
    print c
  end
end
