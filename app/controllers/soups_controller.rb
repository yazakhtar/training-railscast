class SoupsController < ApplicationController

  before_action :find_soup, only: [:show, :edit, :update, :destroy, :toggle_featured]

  def index

    @soups = Soup.all

    respond_to do |format|
      format.json { render json: @soups }
    end

  end

  def show

    respond_to do |format|
      format.html  # default - do nothing
      format.json { render json: @soup }

    end
  end

  def new
  end

  def edit
  end

  def create
  end

  def  update
  end

  def destroy
  end

  def toggle_featured
    #@soup.featured = !@soup.featured?
    #@soup.save
    @soup.toggle!(:featured)
    flash[:notice] = "Successfully updated the featured flag.";
    redirect_to @soup
  end

  def secret_soups
    session[:vip] = true
    redirect_to root_path
  end

  private

  def find_soup
    @soup = Soup.find(params[:id])
  end

end
