require 'pry'

#class for Model3 goes here
#Feel free to change the name of the class
class Subscription

  attr_reader :person, :magazine
  attr_writer :person, :magazine
  #attr_accessor :person, :magazine

  @@all = []

  def initialize(person, magazine)
    @person = person
    @magazine = magazine
    @@all << self  #can also write as self.class.all << self
  end

  def self.all
    @@all
  end
  
end
