class GifsController < ApplicationController

  def new
    @gif = Gif.new
  end

  def create
    p params
    @gif = Gif.new(url: params[:gif][:url], description: params[:gif][:description])
    if @gif.save
      flash[:notice] = "gif created successfully"
      redirect_to root_path
    else
      @gif = Gif.new
      @gif.valid?
      render :new
    end

  end

end