class RenderAsyncsController < ApplicationController
  layout "no_jquery", only: :show_no_jquery

  # GET /render_async
  def show
  end

  # GET /render_async/show_no_jquery
  def show_no_jquery
  end

  # actions for rendering using render_async

  # GET /render_async/wave
  def wave
    render layout: false
  end

  # POST /render_async/bump
  def bump
    @body = request.body.read
    render layout: false
  end

  # GET /render_async/error
  def error
    # Check for the custom header we send when retrying a request.
    puts "Check Retry-Count-Header: #{request.headers['Retry-Count-Header']}"

    head :not_found, layout: false
  end

  # GET /render_async/nested
  def nested
    render layout: false
  end
end
