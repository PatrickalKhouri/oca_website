# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Apartment.destroy_all
Condominium.destroy_all
Neighbourhood.destroy_all
City.destroy_all
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
  
puts "created neighbourhoods!!"

puts 'creating condominiums....'

raul_pompeia_201 = Condominium.create(address: "Raul Pompéia, 201", neighbourhood: Neighbourhood.first, has: "Hall de Entrada, Portaria 24h",
hasnt: "Academia, Área de Lazer, Bicicletário, Campo de Futebol, Churrasqueira, Copa, Escritórios Home Office, Espaço gourmet na área comum, Estacionamento, Estacionamento gratuito na rua, Jacuzzi, Lavanderia, Piscina, Playground, Quadra de Squash, Quadra esportiva, Quadra Poliesportiva, Sala de Cinema, Sala de Reuniões, Salão de festas, Salão de jogos, Sauna, Vestiário")

atlantica_1936 = Condominium.create(address: "Av. Atlantica, 1936", neighbourhood: Neighbourhood.first, has: "Hall de Entrada, Portaria 24h",
hasnt: "Academia, Área de Lazer, Bicicletário, Campo de Futebol, Churrasqueira, Copa, Escritórios Home Office, Espaço gourmet na área comum, Estacionamento, Estacionamento gratuito na rua, Jacuzzi, Lavanderia, Piscina, Playground, Quadra de Squash, Quadra esportiva, Quadra Poliesportiva, Sala de Cinema, Sala de Reuniões, Salão de festas, Salão de jogos, Sauna, Vestiário")

atlantica_3958 = Condominium.create(address: "Av. Atlantica, 3958", neighbourhood: Neighbourhood.first, has: " ",
hasnt: "Academia, Área de Lazer, Bicicletário, Campo de Futebol, Churrasqueira, Copa, Escritórios Home Office, Espaço gourmet na área comum, Estacionamento, Estacionamento gratuito na rua, Hall de Entrada, Jacuzzi, Lavanderia, Piscina, Playground, Portaria 24h, Quadra de Squash, Quadra esportiva, Quadra Poliesportiva, Sala de Cinema, Sala de Reuniões, Salão de festas, Salão de jogos, Sauna, Vestiário")

nossa_senhora_1292 = Condominium.create(address: "Av. Nossa Senhora de Copacabana, 1292", neighbourhood: Neighbourhood.first, has: "Elevador, Hall de Entrada, Portaria 24h",
hasnt: "Academia, Área de Lazer, Bicicletário, Campo de Futebol, Churrasqueira, Copa, Escritórios Home Office, Espaço gourmet na área comum, Estacionamento, Estacionamento gratuito na rua, Jacuzzi, Lavanderia, Piscina, Playground, Quadra de Squash, Quadra esportiva, Quadra Poliesportiva, Sala de Cinema, Sala de Reuniões, Salão de festas, Salão de jogos, Sauna, Vestiário")

nossa_senhora_750 = Condominium.create(address: "Av. Nossa Senhora de Copacabana, 750", neighbourhood: Neighbourhood.first, has: "Elevador, Portaria 24h",
hasnt: "Academia, Área de Lazer, Bicicletário, Campo de Futebol, Churrasqueira, Copa, Escritórios Home Office, Espaço gourmet na área comum, Estacionamento, Estacionamento gratuito na rua, Hall de Entrada, Jacuzzi, Lavanderia, Piscina, Playground, Quadra de Squash, Quadra esportiva, Quadra Poliesportiva, Sala de Cinema, Sala de Reuniões, Salão de festas, Salão de jogos, Sauna, Vestiário")

timoteo_da_costa_541 = Condominium.create(address: "Rua Timóteo da Costa 541", neighbourhood: Neighbourhood.second, has: "Água quente, Ar condicionado, Armário de Cozinha, Espaço pronto para uso de notebook, Frigobar, Louças e talheres, Toalhas e Lençóis, TV, Wi-fi",
hasnt: "Armários embutidos no quarto, Banheira, Blackout nas cortinas, Box blindex, Cabides, Cafeteira Nespresso, Churrasqueira, Cooktop Elétrico, Elevador, Ferro de Passar, Fogão, Forno, Geladeira, Jacuzzi, Lareira, Máquina de Lavar, Microondas, Piano, Piscina, Piso de Madeira, Piso Vinílico, Púlpito para casamentos, TV a cabo, Varanda")

visconde_de_albuquerque_444 =Condominium.create(address: "Av. Visconde de Albuquerque, 444", neighbourhood: Neighbourhood.second, has: "Elevador, Estacionamento, Portaria 24h",
hasnt: "Academia, Área de Lazer, Bicicletário, Campo de Futebol, Churrasqueira, Copa, Escritórios Home Office, Espaço gourmet na área comum, Estacionamento gratuito na rua, Hall de Entrada, Jacuzzi, Lavanderia, Piscina, Playground, Quadra de Squash, Quadra esportiva, Quadra Poliesportiva, Sala de Cinema, Sala de Reuniões, Salão de festas, Salão de jogos, Sauna, Vestiário")

timoteo_da_costa_82 =Condominium.create(address: "Rua Timóteo da Costa, 82", neighbourhood: Neighbourhood.second, has: "Estacionamento",
hasnt: "Academia, Área de Lazer, Bicicletário, Campo de Futebol, Churrasqueira, Copa, Elevador, Escritórios Home Office, Espaço gourmet na área comum, Estacionamento gratuito na rua, Hall de Entrada, Jacuzzi, Lavanderia,  Portaria 24h, Piscina, Playground, Quadra de Squash, Quadra esportiva, Quadra Poliesportiva, Sala de Cinema, Sala de Reuniões, Salão de festas, Salão de jogos, Sauna, Vestiário")

jangadeiros_40 = Condominium.create(address: "Rua Jangadeiros, 40", neighbourhood: Neighbourhood.third, has: "Elevador, Portaria 24h", 
hasnt: "Academia, Área de Lazer, Bicicletário, Campo de Futebol, Churrasqueira, Copa, Escritórios Home Office, Espaço gourmet na área comum, Estacionamento, Estacionamento gratuito na rua, Hall de Entrada, Jacuzzi, Lavanderia, Piscina, Playground, Quadra de Squash, Quadra esportiva, Quadra Poliesportiva, Sala de Cinema, Sala de Reuniões, Salão de festas, Salão de jogos, Sauna, Vestiário")

antonio_parreiras_25 = Condominium.create(address: "Rua Antonio Parreiras, 25", neighbourhood: Neighbourhood.third, has: "Academia, Área de Lazer, Elevador, Estacionamento, Hall de Entrada, Jacuzzi, Lavanderia, Piscina, Portaria 24h, Sauna",
hasnt: "Bicicletário, Campo de Futebol, Churrasqueira, Copa, Escritórios Home Office, Espaço gourmet na área comum, Estacionamento gratuito na rua, Playground, Quadra de Squash, Quadra esportiva, Quadra Poliesportiva, Sala de Cinema, Sala de Reuniões, Salão de festas, Salão de jogos, Vestiário")

real_grandeza_96 = Condominium.create(address: "Rua Real Grandeza, 96", neighbourhood: Neighbourhood.fourth, has: "Área de Lazer, Estacionamento, Playground, Portaria 24h",
hasnt: "Academia, Bicicletário, Campo de Futebol, Churrasqueira, Copa, Escritórios Home Office, Elevador, Espaço gourmet na área comum, Estacionamento gratuito na rua, Hall de Entrada, Jacuzzi, Lavanderia, Piscina, Quadra de Squash, Quadra esportiva, Quadra Poliesportiva, Sala de Cinema, Sala de Reuniões, Salão de festas, Salão de jogos, Sauna, Vestiário")

carlos_peixoto_80 = Condominium.create(address: "Avenida Carlos Peixoto, 80", neighbourhood: Neighbourhood.fourth, has: "Academia, Área de Lazer, Churrasqueira, Copa, Elevador, Escritórios Home Office, Espaço gourmet na área comum, Estacionamento, Hall de Entrada, Piscina, Playground, Portaria 24h, Quadra de Squash, Sala de Cinema, Sala de Reuniões, Salão de festas, Salão de jogos, Sauna, Vestiário",
hasnt: "Bicicletário, Campo de Futebol, Estacionamento gratuito na rua, Jacuzzi, Lavanderia, Quadra esportiva, Quadra Poliesportiva")

puts "created condominiums!!!"

puts "creating apartments..."

copa_paranhos = Apartment.create(name: "Copacabana Paranhos", condominium: raul_pompeia_201 , number: "502", price: 120, m2: 27, room: 0, guest: 2, bed: 1, bathroom: 1, pet_friendly: true,
description: "Excelente apartamento mobiliado, bem localizado, decorado com cores calmas e tranquilas. O apartamento fica no quinto andar, com vista praticamente livre. Fácil acesso a praças, supermercados e comércio. Também próximo as Praias de Copacabana, Diabo, Arpoardor e Ipanema. Existem pontos de ônibus próximos que levam a qualquer parte da cidade. Perfeito para casais e solteiros.",
the_space: "Decorado com cores em tons pastel, refletem a leveza de um apartamento aconchegante. Mobiliado especialmente para locações por temporada, o apartamento conta com cama de solteiro e sofá cama, mesa para trabalho e cozinha equipada. Com box blindex, também conta com máquina de lavar do tipo fixa na parede, para que o espaço seja melhor aproveitado. O chuveiro é do tipo elétrico e os espelhos são grandes os suficientes para que não haja problema ao se vestir ou maquiar. A cozinha é pequena, mas é do tamanho suficiente para um casal poder preparar deliciosas comidas. Apartamento inteiramente completo e iluminado. Impossível não se apaixonar.",
transportation: "Morar em Copacabana é sinônimo de não se preocupar com transporte. O serviço público é sem igual em relação a outros pontos da cidade. É possível se deslocar fácil, com simplicidade e rapidez.",
has: "Água quente, Ar condicionado, Armário de Cozinha, Armários embutidos no quarto, Blackout nas cortinas, Box blindex, Cafeteira Nespresso, Fogão, Forno, Geladeira, Louças e talheres, Máquina de Lavar, Microondas, Piso Vinílico, Toalhas e Lençóis",
hasnt: "Banheira, Cabides, Churrasqueira, Cooktop Elétrico, Elevador, Espaço pronto para uso de notebook, Ferro de Passar, Frigobar, Jacuzzi, Lareira, Piano, Piscina, Piso de Madeira, Púlpito para casamentos, TV, TV a cabo, Varanda, Wi-fi",
active: true , oca_id: "033")
file = open('https://cdnstatic8.com/emalgumlugardomundo.com.br/wp-content/uploads/2019/10/passeio-de-barco-em-arraial-do-cabo-17.jpg')
copa_paranhos.photo.attach(io: file, filename: 'boat1.jpg')

copa_beach = Apartment.create(name: "Copacabana Beach", condominium: atlantica_1936, number: "803", price: 120, m2: 30, room: 1, guest: 2, bed: 1, bathroom: 1, pet_friendly: true,
description: "Apartamento ideal para 2 pessoas no coração do Rio de Janeiro, Copacabana. Em frente a praia, perto de supermercado, metro e de qualquer serviço ou loja que precise. O prédio conta com portaria 24 horas por dia. Você não vai se arrepender de se hospedar aqui!",
the_space: "É um pequeno apartamento para dois.

Conta com 2 camas de solteiro, um confortável banheiro, uma cozinha pequena onde você pode cozinhar algumas coisas práticas, e uma geladeira para manter seus alimentos.

Também está disponível um TV, Internet e ar condicionado..",
transportation: "Perto do metrô, apenas 5 minutos caminhando. Você pode praticamente ir e voltar de qualquer lugar da cidade de ônibus. Se precisar de um taxi ou Uber, eles podem parar em frente ao edifício.",
has: "Água quente, Ar condicionado, Armário de Cozinha, Box blindex, Cabides, Espaço pronto para uso de notebook, Ferro de Passar, Fogão, Geladeira, Louças e talheres, Microondas, Toalhas e Lençóis, TV, TV a cabo, Wi-fi",
hasnt: "Armários embutidos no quarto, Banheira, Blackout nas cortinas, Cafeteira Nespresso, Churrasqueira, Cooktop Elétrico, Elevador, Forno, Frigobar, Jacuzzi, Lareira, Máquina de Lavar, Piano, Piscina, Piso de Madeira, Piso Vinílico, Púlpito para casamentos, Varanda",
active: true , oca_id: "009")
file = open('https://cdnstatic8.com/emalgumlugardomundo.com.br/wp-content/uploads/2019/10/passeio-de-barco-em-arraial-do-cabo-17.jpg')
copa_beach.photo.attach(io: file, filename: 'boat1.jpg')

copa_cupuacu = Apartment.create(name: "Copacabana Cupuaçu", condominium: atlantica_3958, number: "1006", price: 300, m2: 90, room: 3, guest: 6, bed: 5, bathroom: 2, pet_friendly: false,
description: "COPACABANA CUPUAÇU é um bem decorado e iluminado apartamento aos pés da praia de Copacabana. Espaçoso, possui 3 quartos confortáveis, sendo ideal para grupos e famílias. Conta com cozinha equipada e máquina de lavar. Completo para ter uma estadia perfeita.",
the_space: "COPACABANA CUPUAÇU é um espaçoso apartamento de três quartos na praia de Copacabana. Conta com uma sala confortável com ar condicionado e integrada a cozinha, de forma que é possível preparar suas refeições e socializar com quem estiver na sala ao mesmo tempo. Todos os quartos possuem ar condicionado. Um dos quartos conta com uma cama de casal e os demais camas de solteiro. Também conta com dois confortáveis banheiros.",
transportation: "Copacabana é o bairro de melhor locomoção da cidade. Passam por aqui ônibus para qualquer ponto do Rio de Janeiro, assim como também conta com algumas estações de metrô. É bem simples se movimentar, e quando necessário, solicitar um táxi ou transporte por aplicativo.",
has: "Água quente, Ar condicionado, Armário de Cozinha, Geladeira, Máquina de Lavar, Microondas, TV, TV a cabo, Wi-fi",
hasnt: "Armários embutidos no quarto, Banheira, Blackout nas cortinas, Cafeteira Nespresso, Churrasqueira, Cooktop Elétrico, Elevador, Forno, Frigobar, Jacuzzi, Lareira, Máquina de Lavar, Piano, Piscina, Piso de Madeira, Piso Vinílico, Púlpito para casamentos, Varanda",
active: true , oca_id: "054")
file = open('https://cdnstatic8.com/emalgumlugardomundo.com.br/wp-content/uploads/2019/10/passeio-de-barco-em-arraial-do-cabo-17.jpg')
copa_cupuacu.photo.attach(io: file, filename: 'boat1.jpg')

copa_pitanga = Apartment.create(name: "Copacabana Pitanga", condominium: nossa_senhora_1292 , number: "602", price: 230, m2: 77, room: 2, guest: 4, bed: 3, bathroom: 2, pet_friendly: false,
description: "Apartamento em Copacabana para 4 pessoas especialmente mobiliado para locação por temporada. Extremamente próximo de Ipanema e Arpoador e ao mesmo tempo a 1 quadra da Praia de Copacabana. Perfeito para famílias e viajantes de negócio.",
the_space: "Apartamento simples e confortável em uma excelente localização do Rio de Janeiro. Conta com cozinha completa, com fogão, geladeira, microondas e todos os utensílios necessários. A sala conta com mesa e sofá confortável e uma varanda deliciosa. O banheiro foi completamente reformado. Um dos quartos conta com cama de casal e o outro com duas camas de solteiro e uma pequena varanda. Há ar-condicionado em todos os quartos. O apartamento também tem uma área de serviço espaçosa e um outro quarto nos fundos que normalmente é utilizado como depósito.",
transportation: "Copacabana é o bairro de melhor locomoção da cidade. Passam por aqui ônibus para qualquer ponto do Rio de Janeiro, assim como também conta com algumas estações de metrô. É bem simples se movimentar, e quando necessário, solicitar um táxi ou transporte por aplicativo.",
has: "Água quente, Ar condicionado, Armário de Cozinha, Armários embutidos no quarto, Blackout nas cortinas, Box blindex, Cabides, Espaço pronto para uso de notebook, Ferro de Passar, Fogão, Forno, Geladeira, Louças e talheres, Microondas, Piso de Madeira, Toalhas e Lençóis, Varanda, Wi-fi",
hasnt: "Armários embutidos no quarto, Banheira, Blackout nas cortinas, Cafeteira Nespresso, Churrasqueira, Cooktop Elétrico, Elevador, Forno, Frigobar, Jacuzzi, Lareira, Máquina de Lavar, Piano, Piscina, Piso de Madeira, Piso Vinílico, Púlpito para casamentos, Varanda",
active: true , oca_id: "059")
file = open('https://cdnstatic8.com/emalgumlugardomundo.com.br/wp-content/uploads/2019/10/passeio-de-barco-em-arraial-do-cabo-17.jpg')
copa_pitanga.photo.attach(io: file, filename: 'boat1.jpg')

copa_ieda = Apartment.create(name: "Copacabana Ieda", condominium: nossa_senhora_750 , number: "608", price: 150, m2: 77, room: 1, guest: 2, bed: 1, bathroom: 1,  pet_friendly: false,
description: "Copacabana Ieda tem um ambiente simplista, mas charmoso. Todo em branco, com detalhes que fazem a diferença e organizado especialmente para o hóspede. Conta com TV a cabo grande e moderna, Wi-fi e ar-condicionado. Janela do quarto com blecaute e armário amplo para garantir que guarde todas as suas roupas. O prédio é charmoso, 2 quadras da praia e fica em uma das principais ruas do bairro, com acesso fácil para qualquer lugar da cidade. Você vai amar! Bom para casais e viajantes de negócios.",
the_space: "Apartamento todo reformado para locação por temporada. Cama grande e confortável, amplo armário, TV a cabo e wi-fi. Ar-condicionado potente. Lugar agradável e tranquilo. Máquina de lavar roupas, banheiro com blindex e detalhes em mármore. Cozinha pequena, mas o suficiente para preparar pequenas refeições. Não conta com fogão e forno, porém tem microondas",
transportation: "Copacabana é o bairro de melhor locomoção da cidade. Passam por aqui ônibus para qualquer ponto do Rio de Janeiro, assim como também conta com algumas estações de metrô. É bem simples se movimentar, e quando necessário, solicitar um táxi ou transporte por aplicativo.",
has: "Ar condicionado, Box blindex, Cabides, Espaço pronto para uso de notebook, Ferro de Passar, Geladeira, Louças e talheres, Máquina de Lavar, Microondas, Piso de Madeira, Toalhas e Lençóis, TV a cabo, Wi-fi",
hasnt: "Armários embutidos no quarto, Banheira, Blackout nas cortinas, Cafeteira Nespresso, Churrasqueira, Cooktop Elétrico, Elevador, Forno, Frigobar, Jacuzzi, Lareira, Máquina de Lavar, Piano, Piscina, Piso de Madeira, Piso Vinílico, Púlpito para casamentos, Varanda",
active: true , oca_id: "024")
file = open('https://cdnstatic8.com/emalgumlugardomundo.com.br/wp-content/uploads/2019/10/passeio-de-barco-em-arraial-do-cabo-17.jpg')
copa_ieda.photo.attach(io: file, filename: 'boat1.jpg')

leblon_caja = Apartment.create(name: "Leblon Cajá", condominium: timoteo_da_costa_541 , number: "407", price: 250, m2: 28, room: 1, guest: 2, bed: 1, bathroom: 1,  pet_friendly: false,
description: "Charmoso apartamento de 1 quarto no Alto Leblon. Localizado em área calma e tranquila, em alguns minutos chega-se a praia, metrô e melhores restaurantes da cidade. Apartamento completo para você passar uma excelente estadia! Ideal para casais e viajantes de negócios.",
the_space: "Aconchegante apartamento em rua tranquila do Alto Leblon. Quarto conta com cama de casal, armário, ar condicionado e TV. Cozinha com cooktop, frigobar e utensílios para fazer suas refeições. Sala confortável com sofá-cama, mesa de jantar, ventilador e microondas.",
transportation: "Leblon Cajá fica no Alto Leblon, região mais residencial do bairro. O ideal é estar disposto a caminhar 5 minutinhos para chegar ao centro do bairro. Também é possível se locomover via táxi ou transporte por aplicativo com facilidade.",
has: "Água quente, Ar condicionado, Armário de Cozinha, Espaço pronto para uso de notebook, Frigobar, Louças e talheres, Toalhas e Lençóis, TV, Wi-fi",
hasnt: "Armários embutidos no quarto, Banheira, Blackout nas cortinas, Cafeteira Nespresso, Churrasqueira, Cooktop Elétrico, Elevador, Forno, Frigobar, Jacuzzi, Lareira, Máquina de Lavar, Piano, Piscina, Piso de Madeira, Piso Vinílico, Púlpito para casamentos, Varanda",
active: true , oca_id: "060")
file = open('https://cdnstatic8.com/emalgumlugardomundo.com.br/wp-content/uploads/2019/10/passeio-de-barco-em-arraial-do-cabo-17.jpg')
leblon_caja.photo.attach(io: file, filename: 'boat1.jpg')

leblon_pyhsalis = Apartment.create(name: "Leblon Physallis", condominium: visconde_de_albuquerque_444 , number: "304", price: 370, m2: 98, room: 1, guest: 2, bed: 1, bathroom: 1,  pet_friendly: false,
description: "Apartamento incrível em um dos bairros mais deliciosos do Rio, com fácil acesso para toda a cidade. Próximo a praia do Leblon, lugar ideal para quem quer curtir a Zona Sul e ao mesmo tempo estar próximo da Zona Oeste da cidade (Barra da Tijuca). Completamente reformado, com uma vista maravilhosa do quarto. Conta com ar condicionado no quarto e na sala. Cozinha espaçosa. Portaria 24 horas e estacionamento. Ideal para viajantes a negócio e casais.",
the_space: "O ambiente é sensacional. Sala de estar hiper charmosa com uma pequena varanda e também com um futon grande e confortável. Conta com ar condicionado split, sistema de som e TV e uma mesa redonda. Também tem um lavabo reformado. O quarto é bem espaçoso, também com varanda, closet e suíte bem decorada, com banheira. A cozinha é bem espaçosa e completa. Há também um banheiro secundário.",
transportation: "Leblon Physalis fica em um local de fácil acesso, próximo ao metrô e pontos de ônibus, em 5 minutos a pé. Também é possível se locomover via taxi ou transporte por aplicativo com facilidade. Podemos ajudar com qualquer necessidade.",
has: "Água quente, Ar condicionado, Armário de Cozinha, Armários embutidos no quarto, Banheira, Blackout nas cortinas, Box blindex, Cabides, Cafeteira Nespresso, Espaço pronto para uso de notebook, Ferro de Passar, Fogão, Forno, Geladeira, Louças e talheres, Máquina de Lavar, Microondas, Piso de Madeira, Toalhas e Lençóis, TV, TV a cabo, Varanda, Wi-fi",
hasnt: "Armários embutidos no quarto, Banheira, Blackout nas cortinas, Cafeteira Nespresso, Churrasqueira, Cooktop Elétrico, Elevador, Forno, Frigobar, Jacuzzi, Lareira, Máquina de Lavar, Piano, Piscina, Piso de Madeira, Piso Vinílico, Púlpito para casamentos, Varanda",
active: true , oca_id: "052")
file = open('https://cdnstatic8.com/emalgumlugardomundo.com.br/wp-content/uploads/2019/10/passeio-de-barco-em-arraial-do-cabo-17.jpg')
leblon_pyhsalis.photo.attach(io: file, filename: 'boat1.jpg')

leblon_timoteo = Apartment.create(name: "Leblon Timóteo", condominium: timoteo_da_costa_82 , number: "302", price: 400, m2: 100, room: 2, guest: 4, bed: 2, bathroom: 2, pet_friendly: false,
description: "Apartamento com a melhor localização possível do Leblon. Decoração impecável, no Alto Leblon, e o principal, sem ladeiras. Próximo a praia, metrô e melhores restaurantes da cidade, como o conceituadíssimo restaurante brasileiro de vanguarda Oro, assim como cinema, bares, etc. O apartamento dispõe de garagem e uma funcionária estará disponível alguns dias da semana para limpeza, conservação e preparo de refeições no apartamento, já incluído no preço. Melhor custo-benefício que esse, não há.",
the_space: "Apartamento de dois quartos, decorado de forma suave. Sala de estar com ante-sala que pode ser fechada e se tornar completamente fechada para funcionar como escritório / sala de Tv. Ambientes com ar-condicionado. Quarto principal confortável e quarto secundário com cama de solteiro e mesa de escritório. Cozinha ampla, com todos os utensílios disponíveis. Há também dependência e banheiro extra que deverá ser utilizada pela funcionária nos dias em que estiver a serviço. O apartamento conta com garagem e bicicletário. Fica na melhor localização do Alto Leblon, absolutamente sem ladeiras. É possível ir a qualquer lugar do bairro a pé.",
transportation: "Leblon Timóteo fica em um local de fácil acesso, próximo ao metrô e pontos de ônibus, em 5 minutos a pé. O ideal é estar disposto a caminhar 5 minutinhos para chegar ao centro do bairro. Também é possível se locomover via taxi ou transporte por aplicativo com facilidade. Podemos ajudar com qualquer necessidade.",
has: "Água quente, Ar condicionado, Armário de Cozinha, Armários embutidos no quarto, Box blindex, Cabides, Espaço pronto para uso de notebook, Ferro de Passar, Fogão, Forno, Geladeira, Louças e talheres, Máquina de Lavar, Microondas, Piso de Madeira, Toalhas e Lençóis, TV, TV a cabo, Wi-fi",
hasnt: "Armários embutidos no quarto, Banheira, Blackout nas cortinas, Cafeteira Nespresso, Churrasqueira, Cooktop Elétrico, Elevador, Forno, Frigobar, Jacuzzi, Lareira, Máquina de Lavar, Piano, Piscina, Piso de Madeira, Piso Vinílico, Púlpito para casamentos, Varanda",
active: true , oca_id: "032")
file = image_tag("Bruno_Bou.jpg")
leblon_timoteo.photo.attach(io: file, filename: 'boat1.jpg')


ipanema_jangadeiro = Apartment.create(name: "Ipanema Jangadeiro", condominium: jangadeiros_40, number: "803", price: 170, m2: 90, room: 1, guest: 3, bed: 2, bathroom: 1,  pet_friendly: false,
description: "Ipanema Jangadeiros tem um ambiente charmoso e bem espaçoso. É perto do bar Canastra e da tradicional Praça General Osório, que conta com espaços culturais, shows, teatro, exposições e muito mais). Da janela do apartamento é possível avistar uma estação de metro. Pontos de ônibus também estão presentes. Se deslocar é bem fácil. Praia de Ipanema está próxima. Você vai amar! O local tem camas confortáveis, sala e cozinha amplas. Bom para casais, aventuras individuais e famílias (com crianças).",
the_space: "Apto duplex, tipo studio, com pé direito duplo na sala e charmoso terraço.
1o pavimento : sala em 2 ambientes e cozinha
2o pavimento: 2 quartos, 1 quarto de vestir, banheiro e terraço. Não tem vaga de garagem. Não possui dependência de emprega.",
transportation: " ",
has: "Água quente, Ar condicionado, Box blindex, Cabides, Elevador, Espaço pronto para uso de notebook, Fogão, Forno, Geladeira, Louças e talheres, Microondas, Piso de Madeira, Toalhas e Lençóis, TV a cabo, Varanda",
hasnt: "Armários embutidos no quarto, Banheira, Blackout nas cortinas, Cafeteira Nespresso, Churrasqueira, Cooktop Elétrico, Elevador, Forno, Frigobar, Jacuzzi, Lareira, Máquina de Lavar, Piano, Piscina, Piso de Madeira, Piso Vinílico, Púlpito para casamentos, Varanda",
active: true , oca_id: "027")
file = open('https://cdnstatic8.com/emalgumlugardomundo.com.br/wp-content/uploads/2019/10/passeio-de-barco-em-arraial-do-cabo-17.jpg')
ipanema_jangadeiro.photo.attach(io: file, filename: 'boat1.jpg')


ipanema_cupuacu = Apartment.create(name: "Ipanema Cupuaçu", condominium: antonio_parreiras_25 , number: "306", price: 150, m2: 71, room: 2, guest: 2, bed: 1, bathroom: 2,  pet_friendly: true,
description: "Excelente apartamento próximo a praia (5 minutos a pé) e a estação de metrô General Osório (mesma quadra). O espaço conta com um quarto principal confortável com ar condicionado, sala bastante ampla e varanda. A cozinha é espaçosa e a área de serviço contém máquina de lavar roupa. A área comum do edifício conta com 2 piscinas, academia e bar, além de espaço amplo para relaxar. Excelente para descansar e aproveitar. Ótimo ponto de Ipanema para uma excelente experiência no Rio de Janeiro.",
the_space: "O ambiente é simples, porém aconchegante. Conta com sofá, mesa de janta / trabalho, cama confortável. O apartamento é bem amplo para duas pessoas e com todas as comodidades necessárias para uma boa estadia, como máquina de lavar, fogão, televisão e ar-condicionado.",
transportation: "O apartamento fica muito próximo a uma estação de metrô (General Osório) e a diversos pontos de ônibus. Também conta com uma vaga de garagem, caso tenha carro ou alugue algum. O acesso é muito fácil para qualquer parte da cidade, sem dores de cabeça.",
has: "Água quente, Ar condicionado, Cabides, Espaço pronto para uso de notebook, Ferro de Passar, Fogão, Forno, Frigobar, Louças e talheres, Máquina de Lavar, Microondas, Toalhas e Lençóis, TV, TV a cabo, Varanda, Wi-fi",
hasnt: "Armários embutidos no quarto, Banheira, Blackout nas cortinas, Cafeteira Nespresso, Churrasqueira, Cooktop Elétrico, Elevador, Forno, Frigobar, Jacuzzi, Lareira, Máquina de Lavar, Piano, Piscina, Piso de Madeira, Piso Vinílico, Púlpito para casamentos, Varanda",
active: true , oca_id: "030")
file = open('https://cdnstatic8.com/emalgumlugardomundo.com.br/wp-content/uploads/2019/10/passeio-de-barco-em-arraial-do-cabo-17.jpg')
ipanema_cupuacu.photo.attach(io: file, filename: 'boat1.jpg')

botafogo_real = Apartment.create(name: "Botafogo Real", condominium: real_grandeza_96 , number: "702", price: 200 , m2: 70, room: 2, guest: 4, bed: 2, bathroom: 2,  pet_friendly: false,
description: "Espaço sensacional em Botafogo com 1 quarto + suíte e varanda. No condomínio, há bicicletário, espaço de convivência e área de lazer para crianças. BOTAFOGO REAL tem uma localização ótima entre a Rua São Clemente e Rua Voluntários da Pátria. Próximo a Cobal do Humaitá e com muito fácil acesso a estação de metrô de Botafogo e aos bairros de Copacabana, Ipanema e Leblon. Excelente apartamento com todos os itens novos e com uma linda vista para o Cristo Redentor..",
the_space: "Sala bem decorada e iluminada com dois ambientes e ar condicionado. Apartamento conta com dois quartos confortáveis, sendo um com cama de casal e outro com bicama e uma mesa de escritório. Ambos possuem ar condicionado e armários. Cozinha equipada para realizar refeições e integrada a área de serviço com máquina de lavar. Condomínio novo, com bicicletário, área recreativa para as crianças e garagem.",
transportation: "BOTAFOGO REAL está a 15 minutos a pé do metrô de Botafogo, que te leva rapidamente para qualquer lugar da cidade. Próximo as ruas principais do bairro, onde se encontram pontos de ônibus com extrema facilidade. Também é possível utilizar com tranquilidade serviços de transporte por aplicativo.",
has: "Água quente, Ar condicionado, Armário de Cozinha, Armários embutidos no quarto, Blackout nas cortinas, Box blindex, Cabides, Espaço pronto para uso de notebook, Fogão, Forno, Geladeira, Louças e talheres, Máquina de Lavar, Microondas, Toalhas e Lençóis, TV, Varanda.",
hasnt: "Armários embutidos no quarto, Banheira, Blackout nas cortinas, Cafeteira Nespresso, Churrasqueira, Cooktop Elétrico, Elevador, Forno, Frigobar, Jacuzzi, Lareira, Máquina de Lavar, Piano, Piscina, Piso de Madeira, Piso Vinílico, Púlpito para casamentos, Varanda",
active: true , oca_id: "064")
file = open('https://cdnstatic8.com/emalgumlugardomundo.com.br/wp-content/uploads/2019/10/passeio-de-barco-em-arraial-do-cabo-17.jpg')
botafogo_real.photo.attach(io: file, filename: 'boat1.jpg')

botafogo_lima = Apartment.create(name: "Botafogo Lima ", condominium: carlos_peixoto_80 , number: "107", price: 220 , m2: 97, room: 2, guest: 3, bed: 2, bathroom: 3,  pet_friendly: false,
description: "Espaço sensacional em Botafogo com 1 quarto + suíte, escritório e varanda. No condomínio há sala de cinema, salas de home office, salas de reunião, piscina, quadra de squash, churrasqueira e salão de festas. Algumas áreas do condomínio apresentam taxas para serem usadas. Serviço de limpeza durante a estadia já incluída, feita em dias da semana específicos, pelo condomínio. Localização perfeita, muito fácil acesso a Copacabana, Ipanema e Leblon, como também ao Centro da cidade.",
the_space: "Este apartamento foi mobiliado especialmente para locação por temporada. Na sala consta uma mesa de jantar, sofá confortável e, que não está incluída nas fotos, um rack com TV. Há também uma varanda bem confortável e relaxante. Há uma suíte com cama de casal e um quarto de solteiro com banheiro social. Todos os quartos apresentam armários bem amplos e espaçosos. A cozinha, além de muitíssimo bem decorada, apresenta todos os equipamentos básicos para se cozinhar. Atrás da cozinha, a dependência foi transformada em um escritório único, para quem precisa de paz e sossego para trabalho ou estudo. O condomínio também realiza faxina em datas e horários específicos no apartamento, com o custo já incluído no valor do anúncio.",
transportation: "BOTAFOGO LIMA fica próximo a pontos de ônibus que interligam toda a cidade. É possível caminhar um pouco e já estar em Copacabana, próximo ao metrô da Cardeal Arcoverde, como também é possível caminhar um pouco e ir em direção ao metrô de Botafogo, que te leva rapidamente para qualquer lugar da cidade. É próximo as ruas principais do bairro, e a Praia de Botafogo. Também é possível utilizar com tranquilidade serviços de transporte por aplicativo. Contudo, se houver a possibilidade de utilizar um carro alugado ou particular, o transporte é facilitado.",
has: "Água quente, Ar condicionado, Armário de Cozinha, Armários embutidos no quarto, Box blindex, Cabides, Espaço pronto para uso de notebook, Fogão, Forno, Geladeira, Louças e talheres, Piso de Madeira, Toalhas e Lençóis, TV, TV a cabo, Varanda, Wi-fi",
hasnt: "Armários embutidos no quarto, Banheira, Blackout nas cortinas, Cafeteira Nespresso, Churrasqueira, Cooktop Elétrico, Elevador, Forno, Frigobar, Jacuzzi, Lareira, Máquina de Lavar, Piano, Piscina, Piso de Madeira, Piso Vinílico, Púlpito para casamentos, Varanda",
active: true , oca_id: "047")
file = open('https://cdnstatic8.com/emalgumlugardomundo.com.br/wp-content/uploads/2019/10/passeio-de-barco-em-arraial-do-cabo-17.jpg')
botafogo_lima.photo.attach(io: file, filename: 'boat1.jpg')

puts "apartments created!!!"


puts "Seeds created"