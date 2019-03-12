class School

  def initialize(test)
    @roster = {}
  end

  def roster
    @roster
  end

  def roster=()
    @roster = {}
  end

  attr_accessor :name
  attr_accessor :grade

  def add_student(name, grade)
    self.roster[grade] ||= []
    self.roster[grade] << name
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    self.roster.each do |grade, students|
      roster[grade] = students.sort
    end
  end


end
