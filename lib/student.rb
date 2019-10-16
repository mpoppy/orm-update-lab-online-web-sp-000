require_relative "../config/environment.rb"

class Student

  attr_accessor :name, :age
  attr_reader :id 

  def initialize (id=nil, name, age)
    @id = id
    @name = name
    @age = age
  end


end
