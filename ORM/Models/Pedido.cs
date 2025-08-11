namespace Marketplace.Models;

public class Pedido
{
    public int Id { get; set; }
    public DateTime Data { get; set; }
    public int UsuarioId { get; set; }
    public Usuario Usuario { get; set; }
    public ICollection<Produto> Produtos { get; set; } = new List<Produto>();
    public ICollection<itemPedido> Itens { get; set; } = new List<itemPedido>();
}
