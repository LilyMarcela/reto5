prompt = "> "


reto = [
    {q: "Un tipo de archivo en el que todos los valores están delimitados por comas.", a: "CSV"},
    {q: "Crear un segundo nombre para una variable metodo", a: "alias"},
    {q: "Usado para definir una funcion", a: "def"},
    {q: "loop que se repite mientras una condición sea true", a: "while"}
]

puts "Bienvenido a reto 5, Para jugar, solo ingresa el termino correcto para cada una de las definiciones, Listo? Vamos!"

reto.each.with_index do |question, answer|
    puts "Definición #{answer+1}: #{question[:q]}"
    print prompt
    while guess = gets.chomp.downcase
        if guess == question[:a].downcase
            puts "correcto"
            break
        else
            puts "incorrecto!, Trata de nuevo"
            puts "Question #{answer+1}: #{question[:q]}"
            print prompt
        end
    end

end

puts "Felicitaciones, el juego ha finalizado"


