require 'pry'
#class for Model1 goes here
#Feel free to change the name of the class
class Person

  attr_accessor :name, :address

  @@all = []

  def initialize(name, address)
    @name = name
    @address = address
    @@all << self  #can also write as self.class.all << self
  end

  def self.all
    @@all
  end

  #create a method that joins this class to the other through the joiner
  def subscribe_to_magazine(magazine)
    Subscription.new(self, magazine)
  end

  def my_magazines
    magazines = []
    Subscription.all.each do |subscription|
      magazines << subscription.magazine if subscription.person == self
    end
    magazines
  end

  def total_magazines
    my_magazines.length
  end

end #end person class

#make some Magazine and Person instances seed data then call the subscribe to connedt this person to a magazine


# When creating the models, be sure to include rich instance variables, 
# so you can do more with the models! For instance, a doctor model might have things 
# like name, field (field of study), and cost while a patient model might have things 
# like name, ailments and income. In doing this, you might want to write methods 
# where a patient can find the doctors (s)he can afford and/or a doctor appropriate 
# for his/her pain.

