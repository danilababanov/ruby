#comment

=begin
comment
=end

a=3
b=79
p "#{a} #{b} #{a*b}" #"3 79 237"

p arr = [1,2,3,4,5] #[1, 2, 3, 4, 5]
p arr1 = [1,2,3,4, "alpha"] #[1, 2, 3, 4, "alpha"]
p arr2 = [1,2,[3,4],5] #[1, 2, [3, 4], 5]
p arr3 = ["alpha", "beta", "gamma", "delta"] #["alpha", "beta", "gamma", "delta"]
p arr[1] #2
p arr1[4] #"alpha"
p arr3[3] #"delta"

p %w[alpha beta gamma delta] #["alpha", "beta", "gamma", "delta"]
p %w(Jan Feb Mar Apr Иау Jun Jul Aug Sep Oct Nov Dec) #["Jan", "Feb", "Mar", "Apr", "Иау", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]

hash = {1=>2, 3=>4, 5=>8, 2=>12}
p hash    #{1=>2, 3=>4, 5=>8, 2=>12}
hash2 = {"cat" => "cats", "ox" => "oxen", "bacterium" => "bacteria"} 
p hash2  #{"cat"=>"cats", "ох"=>"oxen", "bacterium"=>"bacteria"}
p hash[5] #8
p hash2["ox"] #"oxen"

case "I love ruby"
  when "Love book"
    puts "1"
  when "Love car"
  	puts "2"
  when "I love ruby"
  	puts "3"  #3
  else
  	puts "4"
end

score = 10
case score
  when 1..5
  	puts "You rank Base"
  when 6..10
  	puts "You rank Moderator"  #You rank Moderator
  when 10..15
  	puts "You rank Admin"
  else
  	puts "No rank"
end

book = %w{book1 book2 book3 book4}
i = 0
while i < book.size  do
  print "#{book[i]} " #book1 book2 book3 book4
  i += 1	
end

i = 0
until i == book.size do
  print "#{book[i]} " #book1 book2 book3 book4
  i += 1	
end

for i in book do
  print "#{i} "       #book1 book2 book3 book4
end

book.each do |i|
  print "#{i} "       #book1 book2 book3 book4
end

i = 0
n=book.size-1
loop do
  print "#{book[i] }" #book1 book2 book3 book4
  i += 1
  break if i > n
end

n=book.size-1 
0.upto(n) do |i| 
  print "#{book[i] }" #book1 book2 book3 book4
end

book.each_index do |i|
  print "#{book[i] } " #book1 book2 book3 book4
end


class Friend
  def initialize name, sex, phone
    @name, @sex, @phone = name, sex, phone
  end

  def hello
    puts "#{@name} #{@sex} #{@phone}"
  end
end

name = Friend.new("Den","F","555-55-55")
name2 = Friend.new("Aria","M","777-77-77")

name.hello  #Den F 555-55-55
name2.hello #Aria M 777-77-77

puts "===================================================="
p s1 = "String"
p s2 = "Mr O\'Brien"
p s3 = "C:\\TEMP"

s4 = <<EOF
 String
 new String
 new String
EOF
puts s4

s5 = " String\n new String\n new String\n"
puts s5

p s5.size
p s5.length




















































































































