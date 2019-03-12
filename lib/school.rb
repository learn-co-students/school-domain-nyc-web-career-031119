require 'pry'

class School

  def initialize(name_school)
    @roster_hash = {}
  end

  def roster
    @roster_hash
  end

  def add_student(name, grade)
    if !roster[grade]
      roster[grade] = [name]
    else
      roster[grade] << name
    end
  end

  def grade(grade_num)
    roster[grade_num]
  end

  def sort
    @roster_hash.each do |grade, students|
      @roster_hash[grade] = students.sort
    end

    @roster_hash
  end
end
