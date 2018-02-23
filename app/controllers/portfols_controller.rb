class PortfolsController < ApplicationController
	before_action :set_portfolio_item, only: [:edit, :update, :show, :destroy]
	layout "portfolio"
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
		@portfolio_item = Portfol.new(portfolio_params)

		respond_to do |format|
			if @portfolio_item.save 
				format.html { redirect_to portfols_path, notice: 'Your portfolio item is now live.' }
			else
				format.html { render :new }
			end
		end
	end

	def edit 
	end

	def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfols_path, notice: 'Portfolio Item was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
  end

  def destroy
  	@portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfols_url, notice: 'Portfolio Item was successfully destroyed.' }
    end
  end

  private 

  def portfolio_params
  	params.require(:portfol).permit(:title,
  																	:subtitle,
  																	:body,
  																	technologies_attributes: [:name])
  end

  def set_portfolio_item
  	@portfolio_item = Portfol.find(params[:id])
  end

end
