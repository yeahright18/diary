class Diary
  attr_reader :name, :students, :subjects, :grades
  
  def initialize
    # name -> nazwa np III Klasa
    @name = name
    # students -> uczniowie [Student]
    @Student = student
    @subjects = [
      Subject.new('Polski'), 
      Subject.new('W-F'), 
      Subject.new('Informatyka'),       
      Subject.new('Matematyka')
    ]
    # grades -> oceny z przedmiotów dla uczniów (tutaj zostawiam flow Tobie co do typu danych do przechowywania tego)
  end
 
  def student_grades(id)
    #  Wyświetla oceny ucznia z wszystkich przedmiotów po numerze z dziennika
 
    # docelowo
    # Matematyka -> [1, 4, 5, 6]
    # Polski -> [3, 3, 3+]
  end
 
  def subject_grades(subject_name)
    # Wyświetla wszystkie oceny uczniów z danego przedmiotu
 
    # np subject_name('Matematyka')
    # 1. Rafał Roźniakowski -> [1, 4, 5, 6]
    # 2. Maciek Wojtaszek -> [4, 4, 5, 3+]
    # 3. Kevin Lewandowski -> []
  end
 
  def show_students
    #  Wyświetla wszystkich studentów
 
    # docelowo
    # Numer w dzienniku. Imię i nazwisko
    # 1. Rafał Roźniakowski
    # 2. Maciek Wojtaszek
  end
 
  def show_subjects
    # Wyświetla wszystkie przedmioty w kolejności alfabetycznej
 
    # docelowo
    # Matematyka
    # Polski
    # W-F
  end
 
  def add_student(name, last_name)
    @student = Student.new()
  end
 
  def remove_student(id)
    # Usuwa ucznia z dziennika jeżeli w nim istnieje
    # Tutaj coś jeszcze powinno się zadziać, na razie nie piszę zobaczymy czy wykminisz
  end
 
  def add_grade_by_id(subject_name, student_id, grade)
    # Dodaje ocene dla ucznia wg jego numeru w dzienniku
  end
 
  def add_grade_by_full_name(subject_name, student_name, grade)
    # Dodaje ocene dla ucznia wg jego imienia i nazwiska w dzienniku
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
  def initialize(id, name, last_name)
    @student_id = id
    @student_name = name
    @student_last_name = lastname
  end

  def to_s
    "First name: #{@name}, Last name: #{@last_name}, Id: #{@id}"
  end
  
end
 
 
diary = Diary.new(...)
diary.add_student('Jan', 'Kowalski')
diary.add_student('Maciek', 'Wojtaszek')
diary.add_student('Rafał', 'Roźniakowski')
# diary.show_students
# diary.show_subjects
# diary.add_grade_by_id('Matematyka', 1, 3)
# diary.add_grade_by_id('Matematyka', 1, 5)
# diary.add_grade_by_id('W-F', 1, 3+)
# diary.add_grade_by_full_name('Polski', 'Jan Kowalski', 3)
# diary.add_grade_by_full_name('Matematyka', 'Maciek Wojtaszek', 5)
# diary.add_grade_by_full_name('W-F', 'Maciej Wojtaszek', 3)
# diary.subject_grades('Matematyka')
# diary.student_grades('Jan Kowalski')
# diary.remove_student('Jan Kowalski')
# diary.subject_grades('Matematyka')
# diary.student_grades('Jan Kowalski')