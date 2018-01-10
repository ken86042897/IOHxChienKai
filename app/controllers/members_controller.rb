class ProductsController < ApplicationController
	def index
    @members = Member.all
    end

  def new
    @members = Menber.new
	end
   def edit
   end
end