class Person
  attr_accessor :fname, :lname, :p_age
  def initialize(fname, lname, p_age)
    @fname = fname
    @lname = lname
    @p_age = p_age
  end

  def first_name
    puts @fname
    fname
  end

  def age
    puts @p_age
    p_age
  end

  def full_name
    puts @fname + ' ' + @lname
    fname + ' ' + @lname
  end
end
p = Person.new('tèo', 'nguyễn', 18)
p.first_name
p.age
p.full_name
# Global variable
$global_variable = 10

class Class1
  def print_global
    puts $global_variable
  end
end

class Class2
  def print_global
    puts $global_variable
  end
end

c1 = Class2.new
c2 = Class2.new
c1.print_global
c2.print_global
puts $global_variable
# Instance variable
class Customer
  attr_accessor :fname, :lname, :age
  def initialize(fname, lname, age)
    @fname = fname
    @lname = lname
    @age = age
  end

  def full_name
    puts @fname + ' ' + @lname + ' ' + @age
  end
end
cust1 = Customer.new('tèo', 'nguyễn', 18)
cust2 = Customer.new('Ruby', 'Rails', 12)
puts cust1.age
puts cust2.age
# Class variable
class Car
  attr_accessor :name
  @@count = 0

  def initialize(name)
    @name = name
  end

  def print_count
    @@count += 1
    puts @@count
  end
end
car1 = Car.new('KAWASAKI')
car2 = Car.new('Z1000')
car1.print_count
car2.print_count
# Local variable
def sum_ab(a, b)
  sum = 0
  sum = a + b
end

begin
  puts sum
rescue
  puts 'sum is a local variable'
end
# Inheritance

#Overriding
class Parent
  attr_accessor :fname, :lname, :age
  def initialize(fname, lname, age)
    @fname = fname
    @lname = lname
    @age = age
  end
  def method_p
    puts 'Cry'
  end
  def method_e
    puts 'Eat'
  end
end
class Child < Parent
  def full_name
    puts @fname + ' ' + @lname
    fname + ' ' + @lname
  end
  def method_p
    puts'Smile'
  end
end

child1 = Child.new('nhan', 'nguyen', 20)
child1.full_name
child1.method_e
child1.method_p
# Overloading
def a_b(a, b)
  puts 'Overloading'
end

def a_b(a, b = true)
  puts 'Overloading'
end
a_b(1, 2)
# Mul-Inheritance
module A
  def method_a
    puts 'Method A'
  end
end
module B
  def method_b
    puts 'Method B'
  end
end
class C
  include A
  include B
end
c1 = C.new
c1.method_a
c1.method_b
#public
class Product
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end
ip = Product.new('Iphone')
puts ip.name
#private
class ProductP
  attr_accessor :name

  def initialize(name)
    @name = name
    puts "Product name is #{get_name}"
  end

  private
    def get_name
      'Iphone'
    end
end
iphone = ProductP.new('Iphone')
#protected
class ProductPa
  attr_accessor :name

  def initialize(name)
    @name = name
    puts self.get_name
  end

  protected
    def get_name
      'Iphone'
    end
end
iphon = ProductPa.new('Iphone')