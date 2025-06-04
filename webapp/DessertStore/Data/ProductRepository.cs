using DessertStore.Models;
using Microsoft.EntityFrameworkCore;

namespace DessertStore.Data
{
    public class ProductRepository
    {
        private readonly DessertStoreContext _context;

        public ProductRepository(DessertStoreContext context)
        {
            _context = context;
        }

        public async Task<List<Product>> GetAllProductsAsync()
        {
            return await _context.Products
                .Include(p => p.Images)
                .ToListAsync();
        }

        public async Task<Product?> GetProductByIdAsync(int id)
        {
            return await _context.Products
                .Include(p => p.Images)
                .FirstOrDefaultAsync(p => p.Id == id);
        }
    }
}