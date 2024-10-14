using Microsoft.AspNetCore.Mvc;
using LibraryManagement.Model;

[Route("api/[controller]")]
[ApiController]
public class BooksController : ControllerBase
{
    private readonly LibraryContext _context;

    public BooksController(LibraryContext context)
    {
        _context = context;
    }

    // GET: api/books
    [HttpGet]
    public ActionResult<IEnumerable<Book>> GetBooks()
    {
        return _context.Books.ToList(); //GET tất cả sách
    }

    // GET: api/books/5
    [HttpGet("{id}")]
    public ActionResult<Book> GetBook(int id)
    {
        var book = _context.Books.Find(id);
        if (book == null)
        {
            return NotFound();
        }
        return book; //GET chi tiết sách
    }

    // POST: api/books
    [HttpPost]
    public ActionResult<Book> PostBook(Book book)
    {
        _context.Books.Add(book);
        _context.SaveChanges();
        return CreatedAtAction(nameof(GetBook), new { id = book.Id }, book); //POST thêm sách mới:
    }

    // PUT: api/books/5
    [HttpPut("{id}")]
    public IActionResult PutBook(int id, Book book)
    {
        if (id != book.Id)
        {
            return BadRequest();
        }

        _context.Entry(book).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
        _context.SaveChanges();
        return NoContent(); //PUT cập nhật sách
    }

    // DELETE: api/books/5
    [HttpDelete("{id}")]
    public IActionResult DeleteBook(int id)
    {
        var book = _context.Books.Find(id);
        if (book == null)
        {
            return NotFound();
        }

        _context.Books.Remove(book);
        _context.SaveChanges();
        return NoContent(); //DELETE xóa sách
    }
}
