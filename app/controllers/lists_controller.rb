class ListsController < ApplicationController
	def show
		@list = List.find(params[:id])
	end

	def create
		@list = List.new(list_params)
		if @list.save
			redirect_to @list
		end


	end

	def index
		@list = List.all
	end

	private

		def list_params
			params.require(:list).permit(:name)
		end
end