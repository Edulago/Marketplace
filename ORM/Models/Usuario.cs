namespace Marketplace.Models;
public class Usuario
{
    public int Id { get; set; }
    public string Nome { get; set; }
    public string Email { get; set; }
    public ICollection<Produto> Produtos { get; set; } = new List<Produto>();
    public ICollection<Pedido> Pedidos { get; set; } = new List<Pedido>();
}
