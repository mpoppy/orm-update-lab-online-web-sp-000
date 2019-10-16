require_relative "../config/environment.rb"

class Student

  attr_accessor :name, :age
  attr_reader :id

  def initialize (id=nil, name, age)
    @id = id
    @name = name
    @age = age
  end

  def self.create_table
    sql = <<-SQL
    CREATE TABLE students (
      id INTEGER PRIMARY KEY,
      name TEXT,
      grade TEXT
    )
    SQL

    DB[:conn].execute(sql)
  end


  def self.drop_table
    DROP TABLE students
  end

end
