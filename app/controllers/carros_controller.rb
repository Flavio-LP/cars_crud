class CarrosController < ApplicationController

    def index
        @carros = Carro.todos
    end

    def show
        carros = Carro.todos

        id = params[:id].to_i
        @carro = carros.find { |carro| carro.id == id }
        if @carro.nil?
            raise ActionController::RoutingError.new('Not Found')
        end
    end

end
