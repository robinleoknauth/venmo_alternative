class PaymentsController < ApplicationController
  def index
  end

  def create
    @payment = Payment.new(whitelist)
    unless @payment.save
      render plain: "Save unsuccessful"
    end
  end
  
  private
  def whitelist
      params.require(:payment).permit(:description,:amount, :group_id).merge(user_id: params.require(:user_id))
  end
end