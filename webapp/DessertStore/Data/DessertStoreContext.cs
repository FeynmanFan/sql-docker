using DessertStore.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;

namespace DessertStore.Data
{
    public class DessertStoreContext : DbContext
    {
        public DessertStoreContext(DbContextOptions<DessertStoreContext> options)
            : base(options)
        {
        }

        public DbSet<Product> Products { get; set; }
        public DbSet<ProductImage> ProductImages { get; set; }
    }
}