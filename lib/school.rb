class School
   attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = Hash.new()
  end

  def add_student(name, grade)
      @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade_number)
    @roster[grade_number]
  end

  def sort
   sorted = Hash.new
    @roster.each {|grade, students| sorted[grade] = students.sort } 
      return sorted
    end

end


p "i am not a crook" =~ /[i]/