# frozen_string_literal: true

class UtilsController < ApplicationController
  # TODO: cleanup this test function later
  def up
    info = { name: 'ZoomMate', current_time: Time.now, currently_up: true }
    render json: info
  end
end
