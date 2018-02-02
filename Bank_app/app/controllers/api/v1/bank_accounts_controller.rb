module Api 
  module V1 
 	class BankAccountsController < ApplicationContoller
        def transaction
          amount = prams[:amount]
          transaction = params[:transaction]
          bank_account_id = prams[:bank_account_id]

          errors =::BankAccounts::ValidNewTranscation.new(
                    amount = amount
                    transaction = transaction
                    bank_account_id = bank_account_id
                    )execute!
          if errors.size > 0
          	render json:{errors: errors},staus: 402
          else
          	 errors =::BankAccounts::PerformTransaction.new(
                    amount: @amount
                    transaction: @transaction
                    bank_account_id: @bank_account_id
                    )execute!
          	 render json: {balance: bank_account.balance}
          	end
          end

        end
  	end
 end
end

