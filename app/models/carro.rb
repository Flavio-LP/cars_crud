class Carro
    def initialize(carro_hash = {})
        @id = carro_hash[:id]
        @marca = carro_hash[:marca]
        @modelo = carro_hash[:modelo]
        @ano = carro_hash[:ano]
    end

    attr_accessor :id, :marca, :modelo, :ano

    def self.todos 
        [
            Carro.new({ id: 1, marca: "Fiat", modelo: "Palio", ano: 1999 }),
            Carro.new({ id: 2, marca: "Fiat", modelo: "Uno", ano: 2000 }),
            Carro.new({ id: 3, marca: "Fiat", modelo: "Argo", ano: 2010 }),
            Carro.new({ id: 4, marca: "Fiat", modelo: "Mobi", ano: 2015 }),
            Carro.new({ id: 5, marca: "Fiat", modelo: "Cronos", ano: 2020 })]
    end
end

