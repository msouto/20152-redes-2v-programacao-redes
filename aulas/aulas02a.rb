class Fracao
	attr_accessor :numerador
	attr_reader :denominador

  def initialize(num, den)
    @numerador = num
    self.denominador = den
  end

	def denominador=(den)
		if den.to_i != 0
			@denominador = den
		end
	end
	
	def to_s
	  @numerador.to_s + '/' + @denominador.to_s
	end
	
	def somar(f)
	  d = @denominador * f.denominador
	  n = @numerador * f.denominador + f.numerador * @denominador
	  return Fracao.new(n,d)
	end	
end

#codigo de testes
f1 = Fracao.new(3,5)  #instância do objeto f, da classe Fracao
puts f1.to_s
f2 = Fracao.new(1,2)
puts f2.to_s
f3 = f1.somar(f2)
puts f3.to_s