class AccountTransaction < ApplicationRecord
  belongs_to :bank_account

  TRANSACTION = ["withdraw","deposit"]
  
  validates :bank_account, presence: true
  validates :transaction ,presence: true,inclusion: {in: TRANSACTION}
  validates :amount, presence: true, numericality: true
  validates :transction_number ,presence: true,uniqueness: true

  before_validation :load_defaults

  def load_defaults
   if self.new_record?
   	  self.transction_number = SecureRandom.uiid
   end
  end

end
