public class Funcionario {
    public String nome;
    public Integer rg;
    public String cpf;
    public Integer matricula;
    public String email;
    public String telefone;
    public Decimal comissao;
    
    {
        email = 'mail@mail.com.br';
        cpf = '000.000.000-00';
        nome = 'Sem nome';
    }
    
    public Funcionario(String nome, String email, String telefone) {
        this.nome = nome;
        this.email = email;
        this.telefone = telefone;
    }
    
    public Funcionario(String telefone) {
        this('Desconhecido', 'desconhecido@gmail.com', telefone);
    }
    
    public Funcionario() {
        this('Igor', 'igor@gmail.com', '31XXXXXXXXX');
    }
    
    
    // Método que utiliza objetos como argumentos = MENSAGEM
    public void venderVeiculo(Veiculo veiculo, Cliente cliente){
        
        if(veiculo.tipo == 'carro') {
            this.comissao = veiculo.valorVenda * 0.15;
        } else {
            this.comissao = veiculo.valorVenda * 0.10;
        }
        
        if(veiculo.novo == true) {
            this.comissao += 300;
        } else {
            this.comissao += 200;
        }
               
        System.debug('Veículo de placa ' + veiculo.placa + ' foi vendido pelo funcionario(a): ' + nome);
        System.debug('Proprietário anterior: ' + veiculo.proprietarioAnterior);
        System.debug('Novo proprietário: ' + cliente.nome);
        System.debug('Endereço: ' + cliente.endereco);
        System.debug('Telefone: ' + cliente.telefone);
        veiculo.desvalorizacao();
        System.debug('Valor da venda: ' + veiculo.valorVenda);
        System.debug('Valor de comissão do funcionário: ' + this.comissao.setScale(2));
    }
}
