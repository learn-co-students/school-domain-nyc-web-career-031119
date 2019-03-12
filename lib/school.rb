class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def name
    @name
  end

  def add_student(name, level)
    @roster[level] ||= []
    @roster[level] << name
  end

  def grade(level)
    @roster[level]
  end

  def sort
    @roster.each do |grade,name|
      @roster[grade] = name.sort
    end
  end

end
