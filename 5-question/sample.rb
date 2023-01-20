require_relative '../lib/validator'

class User < ActiveRecord::Base
  validates_cpf_or_cnpj :taxid
end

class Company < ActiveRecord::Base
  validates_cnpj :taxid
end

class Person < ActiveRecord::Base
  validates_cpf :taxid
end
