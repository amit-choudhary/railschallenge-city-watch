class RespondersController < ApplicationController

  def new
    render json: { message: 'page not found' }, status: :not_found
  end

  def create
    @responder = Responder.new(permitted_params_for_create)
    if @responder.save
      render json: @responder, serializer: ResponderSerializer, status: :created
    else
      render json: { message: @responder.errors }, status: :unprocessable_entity
    end
  end

  def edit
    render json: { message: 'page not found' }, status: :not_found
  end

  def destroy
    render json: { message: 'page not found' }, status: :not_found
  end

  private

    def permitted_params_for_create
      params.require(:responder).permit(:type, :name, :capacity)
    end

end
