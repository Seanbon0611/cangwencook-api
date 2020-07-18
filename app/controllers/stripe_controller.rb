class StripeController < ApplicationController
  class StripeController < ApplicationController
    def create
        
        customer = Stripe::Customer.create({
          # email: current_user.email
  
        })
  
        intent = Stripe::PaymentIntent.create({
          customer: customer.id,
          payment_method_types: ['card']
        })
  
        render json: {msg: "Successfully created!", obj: intent}, status: 200
    end
  end
end
