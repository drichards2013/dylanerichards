class ReadingListsController < ApplicationController
  before_action :set_reading_list, only: [:update, :edit]
  before_action :discern_reading_list, only: [:edit, :show]

  def new
    @reading_list = ReadingList.new
  end

  def create
    @reading_list = ReadingList.new(reading_list_params)

    if @reading_list.save
      redirect_to @reading_list
    else
      render :new
    end
  end

  def update
    if @reading_list.update(reading_list_params)
      redirect_to @reading_list
    else
      render :edit
    end
  end

  def show
  end

  def edit
  end

  private

  def discern_reading_list
    params[:id] ?
      @reading_list = ReadingList.find(params[:id]) :
      @reading_list = ReadingList.first
  end

  def set_reading_list
    @reading_list = ReadingList.find(params[:id])
  end

  def reading_list_params
    params.require(:reading_list).permit(:books)
  end
end
