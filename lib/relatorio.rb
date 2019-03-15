class Relatorio

    def initialize(biblioteca)
        @biblioteca = biblioteca
    end

    #def total
    #    soma = 0.0
    #    
    #    @biblioteca.livros.each do |livro|
    #        soma += livro.valor
    #    end
    #
    #    soma
    #end

    #def total
    #    @biblioteca.livros.inject(0) { |tot, livro| tot += livro.valor }
    #end

    def total
        @biblioteca.livros.map(&:valor).inject(:+)
    end

    #def titulos
    #    titulos = []
    #
    #    @biblioteca.livros.each do |livro|
    #        titulos << livro.titulo
    #    end
    #
    #    titulos
    #
    #end

    #def titulos
    #    @biblioteca.livros.map { |livro| livro.titulo }
    #end

    def titulos
        @biblioteca.livros.map &:titulo
    end

end