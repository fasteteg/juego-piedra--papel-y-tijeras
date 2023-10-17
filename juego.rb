# Incluir librería Random
require 'simple-random'

# Definir constantes
PIEDRA = "piedra"
PAPEL = "papel"
TIJERA = "tijera"
ELECCIONES = [PIEDRA, PAPEL, TIJERA]

# Funcion principal
def jugar
  puts "Bienvenido al juego Piedra, Papel o Tijera"

  # Pedir eleccion del usuario
  print "Ingresa tu elección (piedra, papel o tijera): "
  eleccion_usuario = gets.chomp.downcase

  # Generar eleccion aleatoria para el computador
  eleccion_computador = ELECCIONES.sample

  # Comparar elecciones y determinar resultado
  if eleccion_usuario == eleccion_computador
    resultado = "Empate"
  elsif [PIEDRA, PAPEL].include?(eleccion_usuario) && eleccion_computador == TIJERA
    resultado = "Ganaste"
  elsif eleccion_usuario == TIJERA && [PIEDRA, PAPEL].include?(eleccion_computador)
    resultado = "Perdiste"
  else
    resultado = "Empate"
  end

  # Mostrar resultado al usuario
  puts "El resultado del juego es: #{resultado}"

  # Preguntar al usuario si quiere jugar de nuevo
  print "¿Quieres jugar de nuevo? (s/n): "
  respuesta = gets.chomp.downcase

  # Si quiere jugar de nuevo, volver al inicio
  while respuesta == "s"
    jugar
  end
end

# Ejecutar funcion principal
jugar