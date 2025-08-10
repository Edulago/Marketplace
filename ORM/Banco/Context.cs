using Marketplace.Models;
using Microsoft.EntityFrameworkCore;
using ORM.Models;

namespace Marketplace.Banco;
public class Context : DbContext
{
    public DbSet<itemPedido> ItemPedido { get; set; }
    public DbSet<Pedido> Pedido { get; set; }
    public DbSet<Produto> Protudo { get; set; }
    public DbSet<Usuario> Usuario { get; set; }

    private string ConnectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=Marketplace;Integrated Security=True;Encrypt=False;Trust Server Certificate=False;Application Intent=ReadWrite;Multi Subnet Failover=False";

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        optionsBuilder.UseSqlServer(ConnectionString);
    }
}
