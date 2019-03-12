class School

attr_accessor :roster, :school_name, :student

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student, grade_level)
    if @roster.keys.include?(grade_level)
      @roster[grade_level] << student
    else
      @roster[grade_level] = []
      @roster[grade_level] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    new_hash = {}

    @roster.each do |grade, name|
      new_hash[grade] = name.sort
    end
    new_hash
  end



end
