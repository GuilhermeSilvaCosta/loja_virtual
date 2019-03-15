biblioteca = Biblioteca.new
biblioteca.adiciona Livro.new "TDD", "Mauricio Aniche", "123454", 247, 69.9, :testes
biblioteca.adiciona Livro.new "Web Design Responsivo", "Tárcio Zemel","45256", 240, 69.9, :web
biblioteca.adiciona Livro.new "Web com JSF e JPA", "Gilliard Cordeiro","543232", 270, 69.9, :web
biblioteca.livros_por_categoria :testes