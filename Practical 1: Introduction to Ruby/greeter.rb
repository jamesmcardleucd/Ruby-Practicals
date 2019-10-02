class Greeter

  def initialize(name)
    @name = name
  end

  def say_hi
    puts "hello #{@name}"
  end

  def say_bye
    puts "bye #{@name}"
  end

end

my_greeter = Greeter.new('James')

5.times do
  my_greeter.say_hi
  my_greeter.say_bye
end

if 1 > 0
  puts 'this is an example of an if statement'
end