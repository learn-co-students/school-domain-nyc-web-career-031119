class School

    attr_accessor :school_name, :name, :grade
    attr_reader :roster 

    def initialize(roster)
        roster = Hash.new
        @roster = roster
    end

    def add_student(name, grade)
        @name = name
        @grade = grade
        # @roster[@grade] = [@name]
        if @roster.keys.include?(grade)
            @roster[grade] << name
        else
            @roster[@grade] = [@name]
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        # @roster
        new_hash = {}
        @roster.map do |k, v|
            new_hash[k] = v.sort
        end
        new_hash.sort.to_h
    end
end