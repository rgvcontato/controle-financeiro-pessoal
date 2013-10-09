class Account < ActiveRecord::Base
  has_many :lancamentos
end
