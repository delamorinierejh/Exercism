module BookKeeping
  VERSION = 3
end

class School

  def initialize
    @school = []
  end

  def add(name, num)
    new_grade = true
    @school.each do |cohort|
      if cohort[:grade] == num
        cohort[:students].push(name).sort_by! { |name| name.downcase }
        new_grade = false
        break
      end
    end
    if new_grade
      @school << {
        grade: num,
        students: [name]
      }
    end
  end

  def students(grade)
    arr = []
    @school.each do |cohort|
      if cohort[:grade] == grade
        arr = cohort[:students]
      end
    end
    return arr
  end

  def students_by_grade
    @school.sort_by { |cohort| cohort[:grade] }
  end

end