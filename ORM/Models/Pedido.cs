﻿namespace Marketplace.Models;

public class Pedido
{
    public int Id { get; set; }
    public DateTime Data { get; set; }
    public Usuario UsuarioId { get; set; }
}
