require 'pry'
#class for Model2 goes here
#Feel free to change the name of the class
class Magazine

  attr_accessor :title, :num_issues

  @@all = []

  def initialize(title, num_issues=12)
    @title = title
    @num_issues = num_issues
    @@all << self  #can also write as self.class.all << self
  end

  def self.all
    @@all
  end

   #create a method that joins this class to the other through the joiner
   def add_subscriber(person)
    Subscription.new(person, self)
  end

  def my_subscribers
    subscribers = []
    Subscription.all.each do |subscription|
      subscribers << subscription.person if subscription.magazine == self
    end
    subscribers
  end

  def total_subscribers
    my_subscribers.length
  end

end #end Magazine class

#make some Magazine and Person instances seed data then call the add_subscriber to connedt this magazine to a person