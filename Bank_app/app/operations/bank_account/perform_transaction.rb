module BankAccount
 class PerformTransaction
  def initialize(amount:, transcation:,bank_account_id:)
   @amount = amount
   @transcation = transcation
   @bank_account_id = bank_account_id
   @bank_account = BankAccount.where(:id @bank_account_id).first
   @errors = [] 
  end
  def execute
   AccountTranscation.creat!(
    bank_account: @bank_account,
    amount: @amount
    transcation: @transcation
    )
    if @transcation == "withdraw"
      @bank_account.update!(balance: bank_account.balance - @amount)
      elsif @transcation == "deposit"
      @bank_account.update!(balance: bank_account.balance + @amount ) 
    end
    @bank_account
      end
 end 
end
 
