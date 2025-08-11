using Marketplace.Models;
using Microsoft.EntityFrameworkCore;

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

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Produto>()
            .HasOne(p => p.Usuario)
            .WithMany(u => u.Produtos)
            .HasForeignKey(p => p.UsuarioId);

        modelBuilder.Entity<Pedido>()
            .HasOne(p => p.Usuario)
            .WithMany(u => u.Pedidos)
            .HasForeignKey(p => p.UsuarioId);

        modelBuilder.Entity<itemPedido>()
            .HasOne(ip => ip.Pedido)
            .WithMany(p => p.Itens)
            .HasForeignKey(ip => ip.PedidoId);

        modelBuilder.Entity<itemPedido>()
            .HasOne(ip => ip.Produto)
            .WithMany(p => p.Itens)
            .HasForeignKey(ip => ip.PedidoId);
    }
}
