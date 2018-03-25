class TweetsController < ApplicationController
  def index
     @tweets = Tweet.all
  end

  def new
     @tweets = Tweet.new
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.save
    redirect_to @customer
  end

  def edit
  end

  def update
    @customer = Customer.find(params[:id])
    if  @customer.update(customer_params)
      redirect_to @customer
    else
      render :edit
    end

  end

  def show
    @customer = Customer.find(params[:id])
  end

  def destroy
    @tweets = Tweet.new(tweets_params)
    @tweet.save
    redirect_to @tweets
  end
  private

def tweets_params
  params.require(:tweets).permit(
    :family_name,
    :given_name,
    :email
    )
end
end
