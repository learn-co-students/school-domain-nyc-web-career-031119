class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, year)
    @roster[year] ? @roster[year] << name : @roster[year] = [name]
  end

  def grade(year)
    @roster[year]
  end

  def sort
    result = {}
    @roster.each { |k, v| result[k] = v.sort }
    result

  end


end
