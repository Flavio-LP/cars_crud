class CarrosController < ApplicationController
  def index
    @carros = Carro.all
  end
  def new
    @carro = Carro.new
  end

  def show
    @carro = Carro.find(params[:id])
  end



  def create
    @carro = Carro.new()
    if @carro.save
      redirect_to @carro, notice: "Carro criado com sucesso!"
    else
      render :new
    end
  end

  def edit
    @carro = Carro.find(params[:id])
  end

  def update
    @carro = Carro.find(params[:id])
    if @carro.update(carro_params)
      redirect_to @carro, notice: "Carro atualizado com sucesso!"
    else
      render :edit
    end
  end

  def destroy
    @carro = Carro.find(params[:id])
    @carro.destroy
    redirect_to carros_path, notice: "Carro excluído com sucesso!"
  end

  private

  def carro_params
    params.require(:carro).permit(:marca, :modelo, :ano)
  end
end
