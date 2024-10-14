using Microsoft.EntityFrameworkCore;
using LibraryManagement.Model;

public class LibraryContext : DbContext
{
    public LibraryContext(DbContextOptions<LibraryContext> options) : base(options)
    {
    }

    public DbSet<Book> Books { get; set; }
}
