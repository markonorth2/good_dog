class GoodDog
  @@number_of_dogs = 0
  attr_accessor :name, :height, :weight
  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
    @@number_of_dogs += 1
  end

  def speak
    "#{name} says Arf!"
    # By removing the @ symbol, we're now calling the instance method, rather than the instance variable. 
    # Technically, you could just reference the instance variable, but it's generally a good idea to call the getter method instead.
  end

  def change_info(n, h, w)
    # To disambiguate from creating a local variable, we need to use self.name= to let Ruby know that we're calling a method. 
    self.name = n
    self.height = h
    self.weight = w
  end 

  def info
    if @@number_of_dogs === 1 
      "#{self.name} weighs #{self.weight} and is #{self.height} tall. Altogether, there is #{@@number_of_dogs} dog."
    else 
      "#{self.name} weighs #{self.weight} and is #{self.height} tall. Altogether, there are #{@@number_of_dogs} dogs."

    end
  end

end

# sparky = GoodDog.new("Sparky")
# puts sparky.speak
# puts sparky.name
# sparky.name = "Spartacus"
# puts sparky.name

# fido = GoodDog.new("Fido")
# puts fido.speak 

rogers = GoodDog.new('Rogers', '12 inches', '10 lbs')
puts rogers.info      # => Rogers weighs 10 lbs and is 12 inches tall.

rogers.change_info('Spartacus', '24 inches', '45 lbs')
puts rogers.info      # => Spartacus weighs 45 lbs and is 24 inches tall.

bell = GoodDog.new('Bell', '14 inches', '15 lbs')
puts bell.info      # => Rogers weighs 10 lbs and is 12 inches tall.


