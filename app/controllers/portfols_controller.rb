class PortfolsController < ApplicationController
	def index
		@portfolio_items = Portfol.all
	end

	def angular
		@angular_portfolio_items = Portfol.angular
	end

	def new
		@portfolio_item = Portfol.new
		3.times {@portfolio_item.technologies.build}
	end

	def create
		@portfolio_item = Portfol.new(params.require(:portfol).permit(:title, :subtitle, :body, technologies_attributes: [:name]))

		respond_to do |format|
			if @portfolio_item.save 
				format.html { redirect_to portfols_path, notice: 'Your portfolio item is now live.' }
			else
				format.html { render :new }
			end
		end
	end

	def edit 
		@portfolio_item = Portfol.find(params[:id])
	end

	def update
		@portfolio_item = Portfol.find(params[:id])

    respond_to do |format|
      if @portfolio_item.update(params.require(:portfol).permit(:title, :subtitle, :body))
        format.html { redirect_to portfols_path, notice: 'Portfolio Item was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
  	@portfolio_item = Portfol.find(params[:id])
  end

  def destroy
  	@portfolio_item = Portfol.find(params[:id])

  	@portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfols_url, notice: 'Portfolio Item was successfully destroyed.' }
    end
  end
end
