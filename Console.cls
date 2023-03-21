Funcionario igor = new Funcionario('31996651843');

Veiculo novo = new Veiculo();
Cliente cliente = new Cliente();
Funcionario funcionario = new Funcionario();

novo.placa = 'xxxttt';
novo.marca = 'Ferrari';
novo.tipo = 'carro';
novo.modelo = 'F40';
novo.anoFabricacao = 1970;
novo.proprietarioAnterior = 'Deus';
novo.proprietarioAtual = 'Igor';
novo.valorCompra = 1000000;
novo.valorVenda = 3000000;
novo.novo = true;


System.debug(igor);
System.debug(novo);

funcionario.venderVeiculo(novo, cliente);