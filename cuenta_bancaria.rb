class CuentaBancaria
    attr_accessor :nombre_usuario,:numero_cuenta
    def initialize(nombre_usuario,numero_de_cuenta,vip=0)
        raise RangeError, 'tiene que tener 8 digitos' if numero_de_cuenta.digits.count !=8
        @nombre_usuario = nombre_usuario
        @numero_cuenta = numero_de_cuenta
        @vip = vip
    end

    def numero_de_cuentita
        "#{@vip}-#{@numero_cuenta}"
    end
end

pedro = CuentaBancaria.new('pedro',12345678)
puts pedro.numero_de_cuentita