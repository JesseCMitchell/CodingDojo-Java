package com.codingdojo.bookclub.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.bookclub.models.Book;
import com.codingdojo.bookclub.models.User;
import com.codingdojo.bookclub.repositories.BookRepo;

@Service
public class BookService {
	// adding the book repository as a dependency
	private final BookRepo bookRepo;
	
	// Using dependency injection to make this available
	public BookService(BookRepo bookRepo) {
		this.bookRepo = bookRepo;
	}
	
	// method returns all the books
	public List<Book> allBooks(){
		return bookRepo.findAll();
	}
	
	// method creates a book
	public Book addBook(Book book) {
		return bookRepo.save(book);
	}
	
//	finds ONE book by Id
	public Book findBook(Long id) {
		Optional<Book> optionalBook = bookRepo.findById(id);
		if(optionalBook.isPresent()) {
			return optionalBook.get();
		}else {
			return null;
		}
	}
	
	// Method updates the book - looks the same as create (both use .save)
	public Book updateBook(Book book) {
		return bookRepo.save(book);
	}
	
	
//	methods to list borrowed and unborrowed books
	public List<Book> unborrowedBooks(User user){
		return bookRepo.findByBorrowerIdIsOrUserIdIs(null, user.getId());
	}
	
	public List<Book> borrowedBooks(User user){
		return bookRepo.findByBorrowerIdIs(user.getId());
	}

	//	list of books by user ID
	public List<Book> myBooks(User user){
		return bookRepo.findByUserIdIs(user.getId());
	}

//	add/remove borrower
	public void addBorrower(Book book, User user) {
		book.setBorrower(user);
		bookRepo.save(book);
	}
	
	public void removeBorrower(Book book) {
		book.setBorrower(null);
		bookRepo.save(book);
	}
	
	
	// Method deletes the book
	public void deleteBook(Book book) {
		bookRepo.delete(book);
	}
	
	
	
}
