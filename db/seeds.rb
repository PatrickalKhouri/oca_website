# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


City.destroy_all
Neighbourhood.destroy_all
Condominium.destroy_all
# Apartment.destroy_all
# User.destroy_all
# Room.destroy_all
# Furniture.destroy_all

puts "creating Cities..."

rio_de_janeiro = City.create(name: "Rio de Janeiro")
buzios = City.create(name: "Búzios")

puts "cities created"

puts "creating neighbourhoods.."

copacabana = Neighbourhood.create(name: "Copacabana", city: City.first, description: "Copacabana é um bairro tradicional do Rio de Janeiro.É um bairro extremamente prático e central para toda a Zona Sul. Além de ser turístico, também é bastante comercial, onde é possível se encontrar lojas e serviços de qualquer espécie, com preços sempre em conta.")
leblon = Neighbourhood.create(name: "Leblon", city: City.first, description: "Leblon é um dos bairros mais valorizados da cidade. Praia linda, separada de Ipanema pelo Canal do Jardim de Alá. Com vistas incríveis como das praias, Morro Dois Irmãos e Lagoa Rodrigo de Freitas. Os melhores bares, como Belmonte e Jobi, shoppings, lojas e restaurantes disponíveis todos os dias.")
ipanema = Neighbourhood.create(name: "Ipanema", city: City.first, description: "Ipanema é um bairro tradicional do Rio de Janeiro. É um bairro extremamente prático e central para toda a Zona Sul. Além de ser turístico, também é bastante comercial, onde é possível se encontrar lojas e serviços de qualquer espécie, com preços sempre em conta.")
botafogo = Neighbourhood.create(name: "Botafogo", city: City.first, description: "Botafogo é um bairro tradicional do Rio de Janeiro. Baixo Botafogo é onde se localiza os bares, a parte boemia. Bem próximo ao metrô, é onde os jovens se encontram após o expediente no trabalho. Já a região próxima a Cobal do Humaitá conta com alguns dos melhores restaurantes da cidade. Do lado oposto do bairro está a Praia de Botafogo, com uma vista incrível. Imperdível.")
  
puts "created neighbourhoods.."

puts 'creating condominiums....'

copa_paranhos = Condominium.create(address: "Raul Pompéia, 201", neighbourhood: Neighbourhood.first, has: "Hall de Entrada, Portaria 24h",
hasnt: "Academia, Área de Lazer, Bicicletário, Campo de Futebol, Churrasqueira, Copa, Escritórios Home Office, Espaço gourmet na área comum, Estacionamento, Estacionamento gratuito na rua, Jacuzzi, Lavanderia, Piscina, Playground, Quadra de Squash, Quadra esportiva, Quadra Poliesportiva, Sala de Cinema, Sala de Reuniões, Salão de festas, Salão de jogos, Sauna, Vestiário")

# copa_beach = Condominium.create(address: "Av. Atlantica, 1936", neighbourhood: Neighbourhood.first, has: "Hall de Entrada, Portaria 24h",
# hasnt: "Academia, Área de Lazer, Bicicletário, Campo de Futebol, Churrasqueira, Copa, Escritórios Home Office, Espaço gourmet na área comum, Estacionamento, Estacionamento gratuito na rua, Jacuzzi, Lavanderia, Piscina, Playground, Quadra de Squash, Quadra esportiva, Quadra Poliesportiva, Sala de Cinema, Sala de Reuniões, Salão de festas, Salão de jogos, Sauna, Vestiário")

# copa_cupuacu = Condominium.create(address: "Av. Atlantica, 3958", neighbourhood: Neighbourhood.first, has: " ",
# hasnt: "Academia, Área de Lazer, Bicicletário, Campo de Futebol, Churrasqueira, Copa, Escritórios Home Office, Espaço gourmet na área comum, Estacionamento, Estacionamento gratuito na rua, Hall de Entrada, Jacuzzi, Lavanderia, Piscina, Playground, Portaria 24h, Quadra de Squash, Quadra esportiva, Quadra Poliesportiva, Sala de Cinema, Sala de Reuniões, Salão de festas, Salão de jogos, Sauna, Vestiário")

# copa_pitanga = Condominium.create(address: "Av. Nossa Senhora de Copacabana, 1292", neighbourhood: Neighbourhood.first, has: "Elevador, Hall de Entrada, Portaria 24h",
# hasnt: "Academia, Área de Lazer, Bicicletário, Campo de Futebol, Churrasqueira, Copa, Escritórios Home Office, Espaço gourmet na área comum, Estacionamento, Estacionamento gratuito na rua, Jacuzzi, Lavanderia, Piscina, Playground, Quadra de Squash, Quadra esportiva, Quadra Poliesportiva, Sala de Cinema, Sala de Reuniões, Salão de festas, Salão de jogos, Sauna, Vestiário")

# copa_ieda = Condominium.create(address: "Av. Nossa Senhora de Copacabana, 750", neighbourhood: Neighbourhood.first, has: "Elevador, Portaria 24h",
# hasnt: "Academia, Área de Lazer, Bicicletário, Campo de Futebol, Churrasqueira, Copa, Escritórios Home Office, Espaço gourmet na área comum, Estacionamento, Estacionamento gratuito na rua, Hall de Entrada, Jacuzzi, Lavanderia, Piscina, Playground, Quadra de Squash, Quadra esportiva, Quadra Poliesportiva, Sala de Cinema, Sala de Reuniões, Salão de festas, Salão de jogos, Sauna, Vestiário")

# leblon_caja = Condominium.create(address: "Rua Timóteo da Costa 541", neighbourhood: Neighbourhood.second, has: "Água quente, Ar condicionado, Armário de Cozinha, Espaço pronto para uso de notebook, Frigobar, Louças e talheres, Toalhas e Lençóis, TV, Wi-fi",
# hasnt: "Armários embutidos no quarto, Banheira, Blackout nas cortinas, Box blindex, Cabides, Cafeteira Nespresso, Churrasqueira, Cooktop Elétrico, Elevador, Ferro de Passar, Fogão, Forno, Geladeira, Jacuzzi, Lareira, Máquina de Lavar, Microondas, Piano, Piscina, Piso de Madeira, Piso Vinílico, Púlpito para casamentos, TV a cabo, Varanda")

# leblon_pyhsalis = Condominium.create(address: "Av. Visconde de Albuquerque, 444", neighbourhood: Neighbourhood.second, has: "Elevador, Estacionamento, Portaria 24h",
# hasnt: "Academia, Área de Lazer, Bicicletário, Campo de Futebol, Churrasqueira, Copa, Escritórios Home Office, Espaço gourmet na área comum, Estacionamento gratuito na rua, Hall de Entrada, Jacuzzi, Lavanderia, Piscina, Playground, Quadra de Squash, Quadra esportiva, Quadra Poliesportiva, Sala de Cinema, Sala de Reuniões, Salão de festas, Salão de jogos, Sauna, Vestiário")

# leblon_timoteo = Condominium.create(address: "Rua Timóteo da Costa, 82", neighbourhood: Neighbourhood.second, has: "Estacionamento",
# hasnt: "Academia, Área de Lazer, Bicicletário, Campo de Futebol, Churrasqueira, Copa, Elevador, Escritórios Home Office, Espaço gourmet na área comum, Estacionamento gratuito na rua, Hall de Entrada, Jacuzzi, Lavanderia,  Portaria 24h, Piscina, Playground, Quadra de Squash, Quadra esportiva, Quadra Poliesportiva, Sala de Cinema, Sala de Reuniões, Salão de festas, Salão de jogos, Sauna, Vestiário")

# ipanema_jangadeiro = Condominium.create(address: "Rua Jangadeiros, 40", neighbourhood: Neighbourhood.third, has: "Elevador, Portaria 24h", 
# hasnt: "Academia, Área de Lazer, Bicicletário, Campo de Futebol, Churrasqueira, Copa, Escritórios Home Office, Espaço gourmet na área comum, Estacionamento, Estacionamento gratuito na rua, Hall de Entrada, Jacuzzi, Lavanderia, Piscina, Playground, Quadra de Squash, Quadra esportiva, Quadra Poliesportiva, Sala de Cinema, Sala de Reuniões, Salão de festas, Salão de jogos, Sauna, Vestiário")

# ipanema_cupuacu = Condominium.create(address: "Rua Antonio Parreiras, 25", neighbourhood: Neighbourhood.third, has: "Academia, Área de Lazer, Elevador, Estacionamento, Hall de Entrada, Jacuzzi, Lavanderia, Piscina, Portaria 24h, Sauna",
# hasnt: "Bicicletário, Campo de Futebol, Churrasqueira, Copa, Escritórios Home Office, Espaço gourmet na área comum, Estacionamento gratuito na rua, Playground, Quadra de Squash, Quadra esportiva, Quadra Poliesportiva, Sala de Cinema, Sala de Reuniões, Salão de festas, Salão de jogos, Vestiário")

# botafogo_real = Condominium.create(address: "Rua Real Grandeza, 96", neighbourhood: Neighbourhood.fourth, has: "Área de Lazer, Estacionamento, Playground, Portaria 24h",
# hasnt: "Academia, Bicicletário, Campo de Futebol, Churrasqueira, Copa, Escritórios Home Office, Elevador, Espaço gourmet na área comum, Estacionamento gratuito na rua, Hall de Entrada, Jacuzzi, Lavanderia, Piscina, Quadra de Squash, Quadra esportiva, Quadra Poliesportiva, Sala de Cinema, Sala de Reuniões, Salão de festas, Salão de jogos, Sauna, Vestiário")

# botafogo_lima = Condominium.create(address: "Avenida Carlos Peixoto, 80", neighbourhood: Neighbourhood.fourth, has: "Academia, Área de Lazer, Churrasqueira, Copa, Elevador, Escritórios Home Office, Espaço gourmet na área comum, Estacionamento, Hall de Entrada, Piscina, Playground, Portaria 24h, Quadra de Squash, Sala de Cinema, Sala de Reuniões, Salão de festas, Salão de jogos, Sauna, Vestiário",
# hasnt: "Bicicletário, Campo de Futebol, Estacionamento gratuito na rua, Jacuzzi, Lavanderia, Quadra esportiva, Quadra Poliesportiva")

puts "Seeds created"