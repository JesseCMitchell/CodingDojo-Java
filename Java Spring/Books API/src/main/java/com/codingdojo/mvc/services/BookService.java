package com.codingdojo.mvc.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.mvc.models.Book;
import com.codingdojo.mvc.repositories.BookRepository;

@Service
public class BookService {
	// adding the book repository as a dependency
    private final BookRepository bookRepository;
    
    // Using dependency injection to make this available   
    public BookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }
    
    // method returns all the books
    public List<Book> allBooks() {
        return bookRepository.findAll();
    }
    
    // method creates a book
    public Book createBook(Book book) {
        return bookRepository.save(book);
    }
    
    // method retrieves a book using an Optional (returns if present)
    public Book findBook(Long id) {
    	
        Optional<Book> book = bookRepository.findById(id);
        if(book.isPresent()) {
            return book.get();
        } else {
            return null;
        }
    }

    // Method updates the book - looks the same as create (both use save)
	public Book updateBook(Book book) {
		
		return bookRepository.save(book);
	}
	
	// Method deletes the book
	public void deleteBook(Long id) {
		bookRepository.deleteById(id);
		
	}
}
