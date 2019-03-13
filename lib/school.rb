require 'pry'
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, level)
   roster[level] ||= []
   roster[level] << student
  end

  def grade(level)
    roster.sort_by do |grade, student|
      if grade == level
        return student
      end
    end
  end

  def sort
    hash = {}
    roster.each do |grade, student|
      hash[grade] = student.sort
    end
    hash
  end

  end
