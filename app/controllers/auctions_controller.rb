class AuctionsController < ApplicationController
  def new
		@auction = Auction.new
  end

  def create
    @auction = Auction.new
		@auction.name = params[:name]
		@auction.link = params[:link]
		@auction.description = params[:description]
	 if @auction.save
		redirect_to(:auctions, notice: 'Auction was succesfully created!')
	 else
		render 'new'	
	 end
  end

  def edit
   
  end

  def delete
  end

  def index
	@auction = Auction.all
  end

  def show
  end

private

    def auction_params
      params.require(:auction).permit(:name, :description, :link)
    end
end
