require 'pry'
# code here!

class School
  attr_accessor :add_student, :num_grade, :name, :grade, :sort
  def initialize(roster)
       @roster = {}
    end
    def roster
      @roster
    end

    def add_student(name, num_grade)
      if !@roster.include? num_grade
        roster[num_grade] = []
      end
      roster.map do |k, v|
      if k == num_grade
          v << name
      end
    end

  def grade(num_grade)
    roster[num_grade]
  end

  def sort
    @roster.each do |k, v|
      v.sort!
    end
  end
  end
end

school = School.new("Bayside High School")
