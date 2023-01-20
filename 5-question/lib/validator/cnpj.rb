module Validator
  class Cnpj
    def validate_each(record, attr_name, value)
      record.errors.add(attr_name) unless Cnpj.valid?(value)
    end

    # https://gist.github.com/lucascaton/1109488/55c9e0538b1eacd2d7c7a765b05045b04447ed78
    def self.valid?(value)
      return false if value.nil?

      nulos = %w[11111111111111 22222222222222 33333333333333 44444444444444 55555555555555 66666666666666 77777777777777 88888888888888 99999999999999 00000000000000]
      valor = value.scan /[0-9]/
      if valor.length == 14
        unless nulos.member?(valor.join)
          valor = valor.collect{|x| x.to_i}
          soma = valor[0]*5+valor[1]*4+valor[2]*3+valor[3]*2+valor[4]*9+valor[5]*8+valor[6]*7+valor[7]*6+valor[8]*5+valor[9]*4+valor[10]*3+valor[11]*2
          soma = soma - (11*(soma/11))
          resultado1 = (soma==0 || soma==1) ? 0 : 11 - soma
          if resultado1 == valor[12]
            soma = valor[0]*6+valor[1]*5+valor[2]*4+valor[3]*3+valor[4]*2+valor[5]*9+valor[6]*8+valor[7]*7+valor[8]*6+valor[9]*5+valor[10]*4+valor[11]*3+valor[12]*2
            soma = soma - (11*(soma/11))
            resultado2 = (soma == 0 || soma == 1) ? 0 : 11 - soma
            return true if resultado2 == valor[13] # CNPJ válido
          end
        end
      end

      false # CNPJ inválido
    end
  end
end
