class EntriesController < ApplicationController

	def new
		@account = Account.find params[:account_id]
		@entry	 = @account.entries.new
		respond_with @entry
	end

end
