public class Cliente {
  public String nome;
  public String rg;
  public String cpf;
  public String telefone;
  public String email;
  public String endereco;
  
  {
      nome = 'Sem nome';
      cpf = '000.000.000-00';
      telefone = '(00) 9 0000-0000';
  }
  
  public Cliente(String nome, String email, String telefone) {
      this.nome = nome;
      this.email = email;
      this.telefone = telefone;
  }
  
  public Cliente(String telefone) {
      this('Conhecido', 'conhecido@gmail.com', telefone);
  }
  
  public Cliente() {
      this('Fabio', 'fabio@gmail.com', '21XXXXXXXXX');
  }
  
  

}