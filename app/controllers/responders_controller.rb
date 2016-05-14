class RespondersController < ActionController::Base

  def new
    render json: { message: 'page not found' }, status: :not_found
  end

  def edit
    render json: { message: 'page not found' }, status: :not_found
  end

  def destroy
    render json: { message: 'page not found' }, status: :not_found
  end

end
