class Api::ApiController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :set_default_format
    before_action :authenticate_with_http_token
    before_action :authenticate_user!


    private 

  def authenticate_api_user!
    # Implementa tu lógica de autenticación aquí
    # Si el usuario no está autenticado, puedes responder con un error, por ejemplo:
    # render json: { error: "Not authorized" }, status: :unauthorized unless <tu_condicion_de_autenticación>
  end

  def render_errors(instance)
    @errors = instance.errors
    @klass = instance.class
    render 'shared/errors', status: :unprocessable_entity
  end

  def set_default_format
    request.format = :json 
  end
end   