
class Carta
    attr_accessor :numero, :pinta
    
    def initialize(numero,pinta)
        @numero=numero
        @pinta=pinta
    end
end

cartas=[]
pintas=['C','D','E','T']

5.times do
    numero_carta = Random.rand(1..13)
    cartas.append(Carta.new(numero_carta,pintas.sample))
end
print cartas