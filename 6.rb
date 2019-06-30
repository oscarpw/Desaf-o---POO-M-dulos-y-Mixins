module Test
  def result
    if (@nota1 + @nota2) / 2 >= 4
      puts 'Estudiante aprobado'
    else
      puts 'Estudiante reprobado'
    end
  end
end

module Attendance
  def student_quantity
    puts self.quantity
  end
end

class Student
  @@quantity = 0
  include Test
  extend Attendance
  def initialize(nombre, nota1 = 4, nota2 = 4)
    @@quantity += 1
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
  end

  def self.quantity  #Cómo se puede usar el método de Attendance en lugar de este?
    @@quantity
  end
end


#los separé para probar el if/else
5.times do 
  puts Student.new('Fernando', 5, 2).result 
end

5.times do 
  puts Student.new('Daniela', 4, 5).result
end

puts Student.student_quantity

