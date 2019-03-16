teste_e_design = Livro.new "TDD", "Mauricio Aniche", "123454", 247, 69.9, :testes
p teste_e_design.valor
p teste_e_design.titulo
windows = DVD.new "Windows 7 for Dummies", 98.9, :sistemas_operacionais
p windows.valor
p windows.titulo

p teste_e_design.valor_com_desconto
p windows.valor_com_desconto