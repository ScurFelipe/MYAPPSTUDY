class WelcomeController < ApplicationController
  def index
    @meu_nome = params[:meu_nome]
    @curso = params[:curso]
    
  end
end
