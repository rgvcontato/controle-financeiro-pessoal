class Entry < ActiveRecord::Base
  attr_accessible :description, :type, :value
	belongs_to :account
end
