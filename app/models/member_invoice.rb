class MemberInvoice < Invoice
  belongs_to :recipient, class_name: 'Member'
  belongs_to :sender, class_name: 'Space'

  def paid?
    balance <= 0
  end

  def balance
    total_amount - children.in_effect.sum(:total_amount)
  end

end
