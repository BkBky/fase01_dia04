def gato
  results = []
  counter_o = 0
  counter_x = 0
  cats = ['O', 'X']
  
  for i in 1..9
  choose = cats.sample 
      
      if choose == 'O'
        counter_o +=1
        if counter_o <= 4
        results = results<< choose  + "\s|\s"
        else counter_o >=8
          results = results<< "X" + "\s|\s"
        end
      else choose == 'X'
        counter_x +=1
        if counter_x <= 4
          results= results<< choose + "\s|\s"
        else counter_x >= 8
         results = results<< "O" + "\s|\s"
        end
      end 
  end
  performance =  Array.new(3) { results.pop(3) }
  performance.each do |row|
    print "#{row.join}\n"
    puts "--  --  --"
 end
end

gato

#-------------------------------ejercicio2-----------------------------------

table = ([["Nombre", "Edad", "Genero", "Grupo", "Calificaciones"],
        ["Rodrigo García", 13, "Masculino", "Primero", [9, 9, 7, 6, 8]],
        ["Fernanda Gonzalez", 12, "Femenino", "Tercero",[6, 9, 8, 6, 8]],
        ["Luis Perez", 13, "Masculino", "Primero", [8, 7, 7, 9, 8]],
        ["Ana Espinosa", 14, "Femenino", "Segundo", [9, 9, 6, 8, 8]],
        ["Pablo Moran", 11, "Masculino", "Segundo",[7, 8, 9, 9, 8]]])

counter = 1
array = []
for i in 1..5
  for j in 0..4
    if counter % 5 == 0
      i += 1
    end
     hash = Hash[table[0][j],table[i][j]]
     array << hash
  end
end

array

p array[0]["Nombre"] == "Rodrigo García"
p array[1]["Edad"] == 13
p array[2]["Genero"] == "Masculino"
p array[3]["Grupo"] == "Primero"
p array[4]["Calificaciones"]== [9, 9, 7, 6, 8]




