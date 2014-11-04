class PicturesController < ApplicationController

  def index	# Both the index and show actions have corresponding views (.html.erbnfiles)
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id].to_i)
  end

  def new
  end

  def create
  	render :text => "Saving a picture. URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
  end

end