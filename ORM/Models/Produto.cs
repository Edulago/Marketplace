namespace Marketplace.Models;

public class Produto
{
    public int Id { get; set; }
    public string Nome { get; set; }
    public decimal Preco { get; set; }
    public int QunatidadeEmEstoque { get; set; }
    public int UsuarioId { get; set; }
    public Usuario Usuario { get; set; }
    public ICollection<Pedido> Pedidos = new List<Pedido>();
    public ICollection<itemPedido> Itens { get; set; } = new List<itemPedido>();
}
