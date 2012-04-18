class RequestsController < ApplicationController
  def new
    @request = Request.new(:user_id => params[:user_id])
  end
  
  def create
    @request = current_user.requests.build(params[:request])
    if @request.save
      flash[:notice] = "Successfully created request."
      redirect_to show_user_path
    else
      render :action => 'new'
    end
  end

  def destroy
    @request = Request.find(params[:id])
    @request.destroy
    flash[:notice] = "Successfully destroyed request."
    redirect_to show_user_path
  end
end
