namespace Marketplace.Models;

public class Produto
{
    public int Id { get; set; }
    public string Nome { get; set; }
    public decimal Preco { get; set; }
    public int QunatidadeEmEstoque { get; set; }
    public int UsuarioId { get; set; }
    public Usuario Usuario { get; set; }
}
