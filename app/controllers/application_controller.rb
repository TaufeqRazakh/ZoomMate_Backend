# frozen_string_literal: true

class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken

  def respond_with_json_message(message = nil, status = :ok)
    render json: { message: message }, status: status
  end
end
