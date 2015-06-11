class ListsController < ApplicationController
  def index
    @lists = List.all
    @list = List.new
  end

  def create
    @list = List.new(params.require(:list).permit(:name))

    respond_to do |format|
      if @list.save
        format.json { render json: @list }
      else
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end
end
