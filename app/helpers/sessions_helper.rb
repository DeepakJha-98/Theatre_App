module SessionsHelper

	def sign_in(customer)
		session[:customer_id] = customer.id
	end
	
	def current_customer
		@current_customer = @current_customer || Customer.find_by(id: session[:customer_id])
	end

	def signed_in?
		!current_customer.nil?
	end

	def sign_out
		session.delete(:customer_id)
		@current_customer = nil
	end
end
