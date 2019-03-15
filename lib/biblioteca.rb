class Biblioteca   

    def initialize
        @banco_de_arquivos = BancoDeArquivos.new
    end

    def adiciona(livro)
        salva livro do
            livros << livro
        end
    end

    def livros_por_categoria(categoria)
        livros.select { |livro| livro.categoria == categoria }
    end

    def livros
        @livros ||= @banco_de_arquivos.carrega
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

    def salva(livro)
        @banco_de_arquivos.salva livro
        yield
    end
end