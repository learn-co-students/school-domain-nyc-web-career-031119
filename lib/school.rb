# code here!



class School
attr_accessor :school_name, :roster, :grade

def initialize(school_name)
  @school_name = school_name
  @roster = {}
end

def add_student(kids_name, grade_level)
  #@roster[grade_level] = []
  if !@roster.include? grade_level
    @roster[grade_level] = []
  end
    roster.map do |grade, kids|
    if grade == grade_level
      kids << kids_name
    end
  end
end

def grade(num)
  foo = []
@roster.map do |grades, kids| if grades == num
  foo << kids
end
end
foo.flatten
end

def sort

   @roster.each do |k, v|
     v.sort! 
  end

  end

end
