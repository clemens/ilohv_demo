class PagesController < ApplicationController
  def index
    if params[:directory]
      @directory = Directory.find_by_path(params[:directory])
      flash.now[:alert] = %(Directory "#{params[:directory]}" not found.) unless @directory
    end
  end
end
