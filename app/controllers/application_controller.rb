class ApplicationController < ActionController::Base

  rescue_from ActionController::UnpermittedParameters, with: :unpermitted_params

  def unpermitted_params(exception)
    render json: { message: exception.message }, status: :unprocessable_entity
  end

end
