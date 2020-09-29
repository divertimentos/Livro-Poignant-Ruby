# Blocos
# 5.times {print "Sim, tenho usado bacon pedaçudo nos meus exemplos, mas não farei de novo! \n"}

# As chaves podem ser substituídas pelas palavras DO e END,
# o que é bacana se seu bloco for maior que uma linha

# loop do
#     print "Bem melhor!"
#     print "Ah, mais espaço!"
#     print "Minhas costas estavam me matando dentro daquelas garras de caranguejo."
# end

# require 'net/http'

# Net::HTTP.start("www.ruby-lang.org", 80) do 
#     |http| print(http.get('/en/about/LICENSE.txt').body)
# end

copo_plastico = nil

# if copo_plastico
#     print "O copo plástico está transbordando!"
# end

# unless copo_plastico
#     print "O copo plástico está vazio!"
# end

# print "Yeah!, o copo plástico está cheio de novo!" if copo_plastico
# print "\nDificilmente. Ele está vazio." unless copo_plastico

# print "Estamos usando copos de plástio, pois não temos de vidro." if copo_plastico unless copo_vidro

# if nil.==(true).==(false)
#     print "Isto nunca vai ser printado!"
# end

# no_hotel = true
# print(
#     if no_hotel.nil?
#         "Sem pistas se ele está no hotel!"
#     elsif no_hotel == true
#         "Definitivamente sim!"
#     elsif no_hotel == false
#         "Ele saiu!"
#     else
#         "O sistema está travaaaaaad-iz"
#     end)

# print "Digite e seja diabólico: \n"
# ideia_contrario = gets.reverse
# print ideia_contrario

palavras_codigo = {
    'macacosestrela' => 'Phil e Pete, aqueles chanceleres de pavio curto do Novo Reich', 
    'catapulta' => 'chucky go-go', 
    'bomba' => 'Vida Assistida por Calor',
    'Nigeria' => "Ny e Jerry's Lavagem a Seco (com Donuts)",
    'Ponha um fim nisso' => 'Ponha um fio nisso'
    }

print "Entre com sua nova ideia: \n"
ideia = gets
palavras_codigo.each do |real, codigo|
    ideia.gsub!(real, codigo)
end

print "Arquivo codificado. Favor entrar com um nome para essa ideia: \n"
nome_ideia = gets.strip
File::open("ideia-" + nome_ideia + ".txt", "w") do |f|
    f << ideia
