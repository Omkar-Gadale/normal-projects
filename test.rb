$i = 0
$num = 5

def bot
  puts "enter emp name \n "
a = gets 
puts "enter company name\n "
b = gets
puts "enter emp salary \n"
c = gets
puts "EMP name is #{a} and company is #{b} salary is #{c}"
end

while $i < $num  do
   puts("data  = #$i" )
   bot
   $i +=1
   puts "Enter yes if you want to continue or enter no"
   ans=gets
   if ans=="yes"
      bot

   elsif ans=="no"
      puts "Thank you"
      break
   end

end
