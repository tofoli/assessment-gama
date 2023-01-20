require 'active_model'
require_relative 'validator/cnpj'
require_relative 'validator/cpf'
require_relative 'validator/cpf_or_cnpj'

module ActiveModel
  module Validations
    module HelperMethods
      def validates_cpf(*attr_names)
        validates_with ::Validator::Cpf, _merge_attributes(attr_names)
      end

      def validates_cnpj(*attr_names)
        validates_with ::Validator::Cnpj, _merge_attributes(attr_names)
      end

      def validates_cpf_or_cnpj(*attr_names)
        validates_with ::Validator::CpfOrCnpj, _merge_attributes(attr_names)
      end
    end
  end
end

