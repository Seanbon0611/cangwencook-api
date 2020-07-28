class StripeController < ApplicationController
  
  def payment
    intent = Stripe::PaymentIntent.create({
      amount: 100,
      currency: 'usd',
      # Verify your integration in this guide by including this parameter
      metadata: {integration_check: 'accept_a_payment'},
    })
    if intent.save
      render json: {msg: "Success", obj: intent}, status: 200
    else 
      render json: {error: "Failed!"}, status: 404
    end
  end
  

end
