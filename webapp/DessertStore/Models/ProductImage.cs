namespace DessertStore.Models
{
    public class ProductImage
    {
        public int Id { get; set; }
        public string Title { get; set; } = string.Empty;
        public string Path { get; set; } = string.Empty;
        public int ProductId { get; set; }
        public Product Product { get; set; } = null!;
    }
}