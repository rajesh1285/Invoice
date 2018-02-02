module BankAccount
 class ValidNewTransaction
  def initialize(amount:, transaction:,bank_account_id:)
   @amount = amount.try(:to_f)
   @transaction = transaction
   @bank_account_id = bank_account_id
   @bank_account = BankAccount.where(:id @bank_account_id).first
   @errors = [] 
  end
  
  def execute!
   validates_existance_of_account
   if @transaction == "withdraw" and @bank_account.present?
   	validates_withdrawal!
   end
   @errors
  end

 private
  def  validates_withdrawal!
  	if @bank_account.balance - @amount < 0.00
      @errors << "not enough founds"
    end
  end
  def validates_existance_of_account
   if @bank_account.blank?
     @errors << "amount not found"
   end
  end

 end
end
