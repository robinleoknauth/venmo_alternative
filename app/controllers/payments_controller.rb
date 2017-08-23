class PaymentsController < ApplicationController
  def index
  end

  def create
    @payment = Payment.new(whitelist)
    if @payment.save
      render json: @payment
    else
      render json: @payment.errors.full_messages
    end
  end
  
  private
  def whitelist
      params.require(:payment).permit(:description,:amount, :group_id).merge(user_id: helpers.current_user.id)
  end
  
end