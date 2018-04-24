#Basic Ruby

#printing in Ruby

#puts : Add new line at the end
puts "Wohoooo Here i come Ruby"

#print: Does not add the line at the end
print "yay"
print "Yahoooo"


#.......Variables..........
puts ".............."
x = 8 #Integer
y = 0.5 #Float
z = "Hello" #String

puts x,y,z
#Constant: Starts with capital letter

MyNum = 21
puts MyNum

#To print the variable in a string use #{}

puts "The value of x , y and z is #{x}, #{y}, #{z}"


#......Doing Math............

x=5
y=2
puts x+y #Addition
puts x-y #Subtraction
puts x*y #Multiplication
puts x/y #Division
puts x%y #Modulus operator
puts x**y #Exponents (x to the power of y)

puts "Shorthand Operators"
a=10
b=11
a+=b
puts a

puts "Parallel Assignments"


a,b = b,a # Can be used for swapping the values

puts a,b

#Operator Precendence

#Exponentiation>Mulitplication>Division>Addition>Subtraction

puts ".........................."


#........Strings...............

puts 'Ruby \'s syntax is fun' # Use Bakcslash to include single quote in between single quote
puts "Hello \n World"

#String Interpolation

puts ".........String Interpolation............"
puts "The sum of a and b is #{a+b}"

#Concatenation

str1="Hi "
str2='My name is Puchu'
i = 1

puts str1+str2 # Concatrenate two strings
# puts str1+str2+i # will give error as 1 is interger
puts str1+str2+i.to_s # converted interger to string with to_s



#Repeating a String : String muts be firat followed by integer

puts "Repeating a String"

a = "Hello\n"

puts a*5


#Gettings User Input

x = gets #gets a line of text , including a new line at the end
puts "x is #{x}"

puts "Enter your name"
name = gets.chomp # if will chomp or remove the newline at the end
puts "Welcome #{name}"
