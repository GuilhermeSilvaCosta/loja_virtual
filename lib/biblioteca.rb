class Biblioteca   

    include Enumerable

    def initialize
        @banco_de_arquivos = BancoDeArquivos.new
    end

    def adiciona(midia)
        salva midia do
            midias << midia
        end
    end

    #def midias_por_categoria(categoria)
    #    midias.select { |midia| midia.categoria == categoria }
    #end

    def midias_por_categoria(categoria)
        midias.select do |midia|
            midia.categoria == categoria if midia.respond_to? :categoria
        end
    end

    def midias
        @midias ||= @banco_de_arquivos.carrega
    end

    def each
        midias.each { |midia| yield midia }
    end

    #Chamada por bloco
    #def livros_por_categoria(categoria)
    #    @livros[categoria].each do |livro|
    #        yield livro if block_given?
    #    end
    #end

    #Chamada por procs
    #def livros_por_categoria(categoria, &bloco)
    #    @livros[categoria].each do |livro|
    #        bloco.call livro
    #    end
    #end    

    private

    def salva(midia)
        @banco_de_arquivos.salva midia
        yield
    end
end