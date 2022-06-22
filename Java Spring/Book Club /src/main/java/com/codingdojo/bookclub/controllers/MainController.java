package com.codingdojo.bookclub.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codingdojo.bookclub.models.Book;
import com.codingdojo.bookclub.models.LoginUser;
import com.codingdojo.bookclub.models.User;
import com.codingdojo.bookclub.services.BookService;
import com.codingdojo.bookclub.services.UserService;

@Controller
public class MainController {

	@Autowired
	private UserService userServ; 
	
	@Autowired
	private BookService bookServ;
	
	// ========== Index Route for Login/Reg =======================
	@GetMapping("/")
    public String index(Model model) {
        model.addAttribute("newUser", new User());
        model.addAttribute("newLogin", new LoginUser());
        return "index.jsp";
    }
	
	// ========== Use This to Test Login/Reg, then comment out once item displayall is up ====
//	@GetMapping("/")
//	public String home(Model model, HttpSession session) {
//		if(session.getAttribute("uuid") == null) {
//			return "redirect:/logout";
//		}
//		Long uuid = (long) session.getAttribute("uuid");
//		model.addAttribute("user", userServ.findById(uuid));
//		return "dashboard.jsp";
//	}
//	
	
    // ============ Register New User =============================
	@PostMapping("/register")
    public String register(@Valid @ModelAttribute("newUser") User newUser, BindingResult result, Model model, HttpSession session) {
        User user = userServ.register(newUser, result);
		
		if(result.hasErrors()) {
            model.addAttribute("newLogin", new LoginUser());
            return "index.jsp";
        }
		session.setAttribute("uuid", user.getId());
        
        return "redirect:/dashboard";
    }
	 
	// ============ Login =============================

	@PostMapping("/login")
	public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, BindingResult result, Model model, HttpSession session) {
	     
		User user = userServ.login(newLogin, result);
	 
	    if(result.hasErrors() || user==null) {
	        model.addAttribute("newUser", new User());
	        return "index.jsp";
	    }
	     
	    session.setAttribute("uuid", user.getId());
	 
	    return "redirect:/dashboard";
	}
	
	// ============ Logout =============================
	@GetMapping("/logout")
	public String logout(HttpSession session) {
	 
		// Set uuid to null and redirect to login/register page
		session.setAttribute("uuid", null);
	     
	    return "redirect:/";
	}

	
	// ============ Create Book ====================
	@GetMapping("/newBook")
	public String addBook(@ModelAttribute("book") Book book, HttpSession session) {
		if(session.getAttribute("uuid") == null) {
			return "redirect:/logout";
		}
		return "newBook.jsp";
	}
	
	@PostMapping("/newBook")
	public String addBook(@Valid @ModelAttribute("book") Book book, BindingResult result, HttpSession session) {
		Long uuid = (Long) session.getAttribute("uuid");
		if(uuid == null) {
			return "redirect:/logout";
		}
		if(result.hasErrors()) {
			return "newBook.jsp";
		}else {
			bookServ.addBook(new Book(book.getTitle(), book.getGenre(), book.getAuthor(), book.getThoughts(), userServ.findById(uuid)));
			return "redirect:/dashboard";
		}
	}
	// ============ Display ALL Books ==============
	@GetMapping("/dashboard")
	public String showBooks(HttpSession session, Model model) {
		if(session.getAttribute("uuid") == null) {
			return "redirect:/logout";
		}
		List<Book> books = bookServ.allBooks();
		model.addAttribute("books", books);
		Long uuid = (long) session.getAttribute("uuid");
		model.addAttribute("user", userServ.findById(uuid));
		return "dashboard.jsp";
	}
	
	// ============ Display One Book ===============
	@GetMapping("/books/{id}")
	public String showBooks(@PathVariable("id") Long id, HttpSession session, Model model) {
	 
		Long uuid = (Long) session.getAttribute("uuid");
		if(uuid == null) {
			return "redirect:/logout";
		}
		
		model.addAttribute("user", userServ.findById(uuid));
	     
		Book book = bookServ.findBook(id);
		model.addAttribute("book", book);
	     
	    return "showBook.jsp";
	}
	// ============ Update Book ====================
	
	@GetMapping("/books/edit/{id}")
	public String edit(@PathVariable("id") Long id, HttpSession session, Model model) {	
		
		if(session.getAttribute("uuid") == null) {
			return "redirect:/logout";
		}
		 
		Book book = bookServ.findBook(id);
		model.addAttribute("book", book);
		return "editBook.jsp";
	}
	
	@PutMapping("/books/edit/{id}")
	public String update(@PathVariable("id") Long id, @Valid @ModelAttribute("book") Book book, BindingResult result, HttpSession session) {	
		
		if(session.getAttribute("uuid") == null) {
			return "redirect:/logout";
		}
		 
		if(result.hasErrors()) {
			return "editBook.jsp";
		}else {
			bookServ.updateBook(book);
			return "redirect:/dashboard";
		}
	}
	
	// ============ Delete Book ====================
	
	@RequestMapping("/books/delete/{id}")
	public String deleteBook(@PathVariable("id") Long id, HttpSession session) {
		 
		if(session.getAttribute("uuid") == null) {
			return "redirect:/logout";
		}
    	 
    	bookServ.deleteBook(bookServ.findBook(id));
    	 
    	return "redirect:/dashboard";
	}
	
}
