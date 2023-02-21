class CustomersController < ApplicationController
  def index
    # binding.pry
    if params[:movie_id].present?
      @customers = Customer.where(movie_id:params[:movie_id])
    else
      @customers =Customer.all
    end
  end

  def show
    @customer =Customer.find(params[:id])
  end

  def new
    @customer = Customer.new
  end

  def create
    # binding.pry
    @movie = Movie.find_by(id: params[:movie_id])
    
    @customer = @movie.customers.build(customer_params)
    @customer.save
    redirect_to users_path
    # render plain: "Ticket Booked"

  end


  private
    def customer_params
      params.permit(:name,:theatre_id,:movie_id)
    end
end
