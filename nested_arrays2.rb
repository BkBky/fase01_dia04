



#  hash1 = Hash["Nombre", "Rodrigo García", "Edad", 13, "Genero", "Masculino", "Grupo", "Primero", "Calificaciones", [9, 9, 7, 6, 8]]
#  hash2 = Hash["Nombre", "Fernanda Gonzalez", "Edad", 12, "Genero", "Femenino", "Grupo", "Tercero", "Calificaciones", [6, 9, 8, 6, 8]]
#  hash3 = Hash["Nombre", "Luis Perez", "Edad", 13, "Genero", "Masculino", "Grupo", "Primero", "Calificaciones", [8, 7, 7, 9, 8]]
#  hash4 = Hash["Nombre", "Ana Espinosa", "Edad", 14, "Genero", "Femenino", "Grupo", "Segundo", "Calificaciones", [9, 9, 6, 8, 8]]
#  hash5 = Hash["Nombre", "Pablo Moran", "Edad", 11, "Genero", "Masculino", "Grupo", "Segundo", "Calificaciones", [7, 8, 9, 9, 8]]

# p hash1["Edad"] == 13
# p hash2.values == ["Fernanda Gonzalez", 12, "Femenino", "Tercero", [6, 9, 8, 6, 8]]
# p hash3.keys == ["Nombre", "Edad", "Genero", "Grupo", "Calificaciones"]
# p hash4.values[4] == [9, 9, 6, 8, 8]
# p hash5.keys[4] == "Calificaciones"


# --- codigo sin refactorizar

def gato
  arr = []
  counter_o = 0
  counter_x = 0
  cats = ['O', 'X']
  
  for i in 1..9
  choose = cats.sample 
      
      if choose == 'O'
        counter_o +=1
        if counter_o <= 4
         arr = arr<< choose
        else counter_o >=8
          arr = arr<< "X"
        end
      else choose == 'X'
        counter_x +=1
        if counter_x <= 4
          arr= arr<< choose 
        else counter_x >= 8
        arr = arr<< "O" 
        end
      end 
  end

  performance =  Array.new(3) { arr.pop(3) }
  performance.each do |row|
    print "#{row.join}\n"


  
  end
end

gato

