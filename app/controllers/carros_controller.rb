class CarrosController < ApplicationController
  def index
    @carros = Carro.all
  end
  def new
    @carro = Carro.new()
  end

  def show
    if params[:id] == "new"
      @carro = Carro.find(params[2])
    end   
    @carro = Carro.find(params[:id])
  end

  def create
    @carro = Carro.new(carro_params) # Inicializa o objeto com os parâmetros do formulário
    Rails.logger.debug "Carro params: #{carro_params.inspect}"
    if @carro.save
      Rails.logger.debug "Carro params: #{carro_params.inspect}"
      redirect_to carro_path(@carro), notice: "Carro criado com sucesso!" # Redireciona para a rota de exibição
    else
      Rails.logger.debug "Erros ao salvar o carro: #{@carro.errors.full_messages}"
      render :new # Renderiza o formulário novamente em caso de erro
    end
  end

  def edit
    @carro = Carro.find(params[:id])
  end

  def update
    @carro = Carro.find(params[:id])
    if @carro.update(carro_params)
      redirect_to carros_path(@carro), notice: "Carro atualizado com sucesso!"
    else
      render :edit
    end
  end

  def destroy
    @carro = Carro.find(params[:id])
    Rails.logger.debug "Tentando excluir o carro com ID: #{@carro.id}"
    @carro.destroy
    Rails.logger.debug "Carro excluído com sucesso"
    redirect_to carros_path, notice: "Carro excluído com sucesso!"
  end

  private

  def carro_params
    params.require(:carro).permit(:marca, :modelo, :ano)
  end
end
