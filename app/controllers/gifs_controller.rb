class GifsController < ApplicationController

  def new
    @gif = Gif.new
  end

  def create
    p params
    @gif = Gif.new(url: params[:gif][:url], description: params[:gif][:description])
    if @gif.save
      flash[:notice] = "gif created successfully"
    end
    redirect_to root_path
  end

end