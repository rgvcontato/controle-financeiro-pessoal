class Account < ActiveRecord::Base
  has_many :lancamentos
	has_many :entries
  set_inheritance_column 'something_you_will_not_use'
end
