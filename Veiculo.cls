public class Veiculo {
  public String placa;
  public String marca;
  public String tipo;
  public String modelo;
  public Integer anoFabricacao;
  public String proprietarioAtual;
  public String proprietarioAnterior;
  public Boolean novo;
  public Decimal valorCompra;
  public Decimal valorVenda;
  
  {
    valorVenda = 0;
    valorCompra = 0;
    modelo = 'standard';
  }
  
  public Veiculo(String placa, Integer anoFabricacao, Decimal valorCompra){
      // Referência this
      // Utiliza o objeto ativo na aplicação.
      this.placa = placa;
      this.anoFabricacao = anoFabricacao;
      this.valorCompra = valorCompra;
      if(Date.today().year() == anoFabricacao){
          this.novo = true;
        this.proprietarioAtual = 'A loja';
          this.proprietarioAnterior = 'A loja';
          this.valorVenda = this.valorCompra + 1000;
      }else{
          this.novo = false;
          this.desvalorizacao();
      }
  }
  
  
public Veiculo(String placa) {
      this(placa, 0, 0);
  }
  
  public Veiculo() {
      this('xxxxx', 2000, 5000);
  }
  
  
  public void desvalorizacao(){
     valorVenda -= (200 * (Date.today().year() - anoFabricacao)) - valorCompra; 
  }
}
