class StripeController < ApplicationController
  
  def payment
    intent = Stripe::PaymentIntent.create({
      amount: params[:amount],
      currency: 'usd',
      payment_method_types: ['card'],
    })
    if intent.save
      render json: intent.client_secret, status: 200
    else 
      render json: {error: "Failed!"}, status: 500
    end
  end
  private
  def stripe_params
    params.permit(:amount)
  end
end
