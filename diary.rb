class Diary
  attr_accessor :name
  attr_reader :students, :subjects, :grades, :start_id
  
  def initialize(name)
 
    @name = name
    
    @students = []
    @subjects = [
      Subject.new('Polski'), 
      Subject.new('W-F'), 
      Subject.new('Informatyka'),       
      Subject.new('Matematyka')
    ]

    @start_id = 1

    @grades = {}

  end
 
  def student_grades(id)
  
    id = id.to_i
    grades[id].each {|key, value| puts "#{key} ==b #{value}"}
  
  end

  def student_grades_by_name(full_name) 

    full_name = students.find {|student| student.full_name == full_name}
    student_grades(full_name.id)
    
  end

 
  def subject_grades(subject_name)
  
    grades.each do |id, value|
      id = @students.find{|student| student.id == id}
      value = value[subject_name]
      puts "#{id.id}. #{id.full_name}-> #{value || []}"  
    end
   
  end
 
  def show_students
   
    students.each { |student| puts "#{student.id}. #{student.name} #{student.last_name}" }
    
  end
 
  def show_subjects
    
    subjects.sort_by(&:name).each { |subject| puts subject.name }
    
  end
 
  def add_student(first_name, last_name)
    
    students << Student.new(first_name, last_name, @start_id)
    @start_id += 1
    
  end
 
  def remove_student(id)
    students.delete_if do |student| 
      student.id == id 
    end
    
  end
 
  def add_grade_by_id(subject_name, student_id, grade)

     grades[student_id] ||= {}
     puts grades[student_id][subject_name] ||= [] 
     grades[student_id][subject_name].push(grade)
     
  end
 
  def add_grade_by_full_name(subject_name, student_name, grade)
    
     student = students.find {|student| student.full_name == student_name}
     add_grade_by_id(subject_name, student.id, grade)

  end

end
 
class Subject
  attr_reader :name
 
  def initialize(name)
    @name = name
  end
  
end
 
class Student
  attr_reader :name, :last_name, :id
  def initialize(name, last_name, id)
    @name = name
    @last_name = last_name
    @id = id
  end

  def full_name
    "#{name} #{last_name}"
  end

end
 
 
# diary = Diary.new("III klasa")
# diary.add_student('Jan', 'Kowalski')
# diary.add_student('Maciek', 'Wojtaszek')
# diary.add_student('Rafał', 'Roźniakowski')
# diary.show_students
# diary.show_subjects
# diary.add_grade_by_id('Matematyka', 1, 3)
# diary.add_grade_by_id('W-F', 1, 3)
# diary.add_grade_by_id('Matematyka', 1, 5)
# diary.add_grade_by_id('Polski', 3, 3)
# diary.add_grade_by_full_name('Matematyka', 'Jan Kowalski', 4)
# diary.add_grade_by_full_name('Matematyka', 'Maciek Wojtaszek', 5)
# diary.add_grade_by_full_name('W-F', 'Maciek Wojtaszek', 3)
# diary.student_grades(2)
# diary.subject_grades('Matematyka')
# diary.remove_student(3)
# diary.subject_grades('Matematyka')
# diary.student_grades(1)
# diary.student_grades('1')
# diary.student_grades_by_name('Maciek Wojtaszek')
