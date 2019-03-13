# code here!
# require "pry"
class School
  attr_accessor :name, :roster
  # attr_reader :
  def initialize (name)
    @name = name
    @roster = {}
    # {9 => ["Zach Morris", "AC Slater"], 10 => ["Kelly Kapowski"], 11 => ["Screech"]}
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      # binding.pry
      students.sort!
    end
  end
end
