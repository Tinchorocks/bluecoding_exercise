class RedirectionsController < ApplicationController
  def new 
    @redirection = Redirection.new
  end 

  def create 
    @redirection = Redirection.find_by(url: redirection_params[:url])
    
    if @redirection.present?
      @redirection.update(times_used: @redirection.times_used + 1) 
    else 
      @redirection = Redirection.new(redirection_params)
    end

    if @redirection.save
      redirect_to(@redirection.original_url)
    else
      render :new
    end 
  end 

  private 
  
  def redirection_params
    params.require(:redirection).permit(:url)
  end
end
