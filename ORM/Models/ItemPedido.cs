namespace Marketplace.Models;

public class itemPedido
{
    public int Id { get; set; }
    public Pedido PedidoId { get; set; }
    public Produto ProdutoId { get; set; }
    public int Quantidade { get; set; }
    public decimal Precounitario { get; set; }
}
