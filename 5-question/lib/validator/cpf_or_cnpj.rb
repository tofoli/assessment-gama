require_relative 'cnpj'
require_relative 'cpf'

module Validator
  class CpfOrCnpj
    def validate_each(record, attr_name, value)
      if value.to_s.gsub(/[^0-9]/, '').length <= 11
        record.errors.add(attr_name) unless Cpf.valid?(value)
      else
        record.errors.add(attr_name) unless Cnpj.valid?(value)
      end
    end
  end
end
