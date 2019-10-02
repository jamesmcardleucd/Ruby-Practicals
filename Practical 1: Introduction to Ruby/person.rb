class Person

  def initialize(name, age)
    @name = name
    @age = age
  end

  def to_s
    puts "#{@name} is #{@age} years old."
  end

  def increment_age

    @age += 1

    if @age > 13 && @age <= 18

      puts 'I am a teenager!'

    end

    if @age > 18

      puts 'I am an adult!'

    end

  end

end

my_person = Person.new( 'James', 0 )

20.times do
  my_person.to_s
  my_person.increment_age
end