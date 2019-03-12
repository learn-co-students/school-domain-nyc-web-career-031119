class School

  def initialize(roster)
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    @roster[grade]||= []
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |key, value|
    value.sort!
    end
  end

end

require 'pry'
