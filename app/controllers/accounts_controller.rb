class AccountsController < ApplicationController
	
	def new
		@account = Account.new
		respond_with @account
	end

end
