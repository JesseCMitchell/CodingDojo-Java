package com.codingdojo.mvc.controllers;

import java.util.List;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.codingdojo.mvc.models.Book;
import com.codingdojo.mvc.services.BookService;

@RestController
public class BooksApi {
	
	private final BookService bookService;

	public BooksApi(BookService bookService) {
		this.bookService = bookService;
	}
	
// ============	Methods ===============
	
	// Index method returns bookService and calls findAll
	@RequestMapping("/api/books")
    public List<Book> index() {
        return bookService.allBooks();
    }
    
	// Post method to create book
    @RequestMapping(value="/api/books", method=RequestMethod.POST)
    public Book create(
    		@RequestParam(value="title") String title, 
    		@RequestParam(value="description") String description, 
    		@RequestParam(value="language") String language, 
    		@RequestParam(value="pages") Integer numOfPages) {
    	
        Book book = new Book(title, description, language, numOfPages);
        return bookService.createBook(book);
    }
    
    // Return method using PathVariable to retrieve specific book    
    @RequestMapping("/api/books/{id}")
    public Book show(@PathVariable("id") Long id) {
        Book book = bookService.findBook(id);
        return book;
    }
    
    // Method to update a book    
    @RequestMapping(value="/api/books/{id}", method=RequestMethod.PUT)
    public Book update(
    		@PathVariable("id") Long id, 
    		@RequestParam(value="title") String title, 
    		@RequestParam(value="description") String description, 
    		@RequestParam(value="language") String language,
    		@RequestParam(value="pages") Integer numOfPages) {
    	
        Book book = new Book(title, description, language, numOfPages);
        book.setId(id);
        
        book = bookService.updateBook(book);
        
        return book;
    }
    
    @RequestMapping(value="/api/books/{id}", method=RequestMethod.DELETE)
    public void destroy(@PathVariable("id") Long id) {
        bookService.deleteBook(id);
    }
	
}
