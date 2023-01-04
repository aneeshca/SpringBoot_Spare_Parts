package com.spareparts.spareparts.controller;

import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.hibernate.annotations.Check;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.unit.DataUnit;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spareparts.spareparts.entities.Address;
import com.spareparts.spareparts.entities.Booking;
import com.spareparts.spareparts.entities.Cart;
import com.spareparts.spareparts.entities.Payments;
import com.spareparts.spareparts.entities.Product;
import com.spareparts.spareparts.entities.Seller;
import com.spareparts.spareparts.entities.UserData;
import com.spareparts.spareparts.entities.UserLog;
import com.spareparts.spareparts.repository.ProductRepository;
import com.spareparts.spareparts.repository.UserLogin;
import com.spareparts.spareparts.services.PaymentServices;
import com.spareparts.spareparts.services.ProductService;
import com.spareparts.spareparts.services.UserServices;

@Controller
public class UserController {
	@Autowired
	private UserServices us;
	@Autowired
	private ProductRepository productRepository;
	@Autowired
	private UserLogin userLogin;
	@Autowired
	private ProductService productService;
	@Autowired
	private PaymentServices paymentServices;
	

	@GetMapping("/reg")
	/* redirection to registration page */

	public String regFrom(Model m) {
		m.addAttribute("userd", UserData.class);
		m.addAttribute("userl", UserLog.class);
		return "regForm";
	}
	/* registration */

	@PostMapping("/UserReg")
	public String SaveUser(@ModelAttribute("userd") UserData ud, @ModelAttribute("userl") UserLog lg, Model m) {
		boolean e = us.getEmail(lg.getEmail());
		if (e) {
			System.out.println("already email exist");
			m.addAttribute("alr", "*the given email already register");
			return "regForm";
		} else {
			lg.setUtype("user");
			int i = us.SaveUser(ud, lg);

			if (i != 0) {
				System.out.println("registerd successfully");
				return "login";
			} else {

				System.out.println("registeration faild");
				return "redirect:/";
			}

		}

	}

	@GetMapping("/log")
	public String log(Model m) {
		m.addAttribute("userl", UserLog.class);
		return "login";
	}

	@PostMapping("/loginForm")
	public String login(@ModelAttribute("userl") UserLog ul, Model m, HttpSession session) {
		UserLog u = us.checkLog(ul.getEmail(), ul.getPassword());
		if (u != null) {
			session.setAttribute("sess", u);
			if (u.getUtype().equals("admin")) {
				return "admin";
			} else if (u.getUtype().equals("seller")) {
				System.out.println("seller");
				return "seller";
			} else {
				System.out.println("user");
				List<Product> list = productRepository.findAll();
				List<Cart> cart=us.getCart(u.getU_id());
				m.addAttribute("cart",cart);
				m.addAttribute("viewProduct", list);
				for(Cart li:cart) {
					System.out.println(li.getCid());
				}
				return "user";
			}

		} else {
			System.out.println("login faild");
			m.addAttribute("erro", "*the given email or password is incorrect");
			return "/login";
		}

	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

	/* user update */
	@GetMapping("/userup")
	public String updateUser(Model m) {
		m.addAttribute("user", UserData.class);
		m.addAttribute("user1", UserLog.class);
		return "UserupdateForm";
	}

	@GetMapping("proView/{id}")
	public String productview(@PathVariable("id") int id, Model m) {
		Product pr = us.getProductByid(id);
		m.addAttribute("proView", pr);
		return "ProductView";
	}

	@GetMapping("/BookProductnow/{pid}")
	public String bookPage(@PathVariable("pid") int pid, Model m, HttpSession session) {
		 
		if (session.getAttribute("sess") != null) {
			UserLog user = (UserLog) session.getAttribute("sess");
			Product pro = us.getProductByid(pid);
			Address adr = userLogin.getAddressbyid(user.getU_id());
			m.addAttribute("proCheck", pro);
			m.addAttribute("add", adr);
			return "booking";
		} else {
			return "redirect:/log";
		}
	}
	
	 
	@PostMapping("/proCheck")
	public String bookNow( @RequestParam("pid") int pid,@RequestParam("totalPrice") float total,@RequestParam("count") int count,
			               Model m, HttpSession session) {
		
		Booking book=new Booking();
		UserLog user = (UserLog) session.getAttribute("sess");
		Product pro = us.getProductByid(pid);
		Address addr=us.getAddressbyid(user.getU_id());
		Payments pay=new Payments();
			
		pay.setProductname(pro.getPname());
		pay.setUser(user);
		pay.setQuantity(count);
		pay.setPayment(total);
		
		book.setProduct(pro);
		book.setUserlog(user);
		book.setBookingstatus("on delivery process");
		book.setSeller(pro.getSeller());
		book.setAddress(addr);
		us.ProductBook(book);
	    us.stockProduct((pro.getStock()-count), pid);
	    paymentServices.savePayment(pay);
	    m.addAttribute("booking",book);
	    
		return "bookStatus";
		
		
		
		
	}
	@GetMapping("/gotobooklist")
	public String booklist(HttpSession session,Model m) {
		UserLog ul=(UserLog)session.getAttribute("sess");
	    List<Booking> li =us.bookList(ul.getU_id());
	    m.addAttribute("bookinglist",li);
		System.out.println(li);
		return "bookingHistory";
		
		
	}@GetMapping("/userProfile")
	public String  gotoUserProfile(Model m,HttpSession session) {
		m.addAttribute("user",UserData.class);
		m.addAttribute("addr",Address.class);
		UserLog ul=(UserLog)session.getAttribute("sess");
	    UserLog usr=us.GetUserbyId(ul.getU_id());
		Address ad=us.getAddressbyid(ul.getU_id());
		m.addAttribute("userdata",usr);
		m.addAttribute("address",ad);
		return "userprofile";
	}
	@PostMapping("/updateUserProfile")
	public String updateUser(@ModelAttribute("user")UserData user,@ModelAttribute("addr")Address add,@RequestParam("aid") int id) {
	    us.updateuser(user);
		us.updateAddress(add.getAddress(), add.getPhone(), add.getPincode(), add.getDistrict(), add.getState(), id);
		return "redirect:/userProfile";
	}
	
	@GetMapping("/AddCart/{id}")
	public  String AddToCart(@PathVariable("id") int pid,HttpSession session) {
		UserLog user=(UserLog) session.getAttribute("sess");
		Product product=us.getProductByid(pid);
		if(user!=null) {
		Cart cr=new Cart();
		cr.setPro(product);
		cr.setUserLog(user);
		us.addToCart(cr);
		
		return "redirect:/proView/{id}";
		}else {
			return "redirect:/log";
		}
	}
	
	
	
	
	@GetMapping("/cart")
	public String cart(Model m,HttpSession session) {
		UserLog user=(UserLog) session.getAttribute("sess");
		if(user!=null) {
	List<Cart> cart= us.getCart(user.getU_id());
	System.out.println(cart);
	m.addAttribute("cart",cart);
		return "cart";
		}
		else {
			return "redirect:/log";
		}
	}
	@GetMapping("/removeCart/{cid}")
	public String removeCart(@PathVariable("cid") int cid) {
		us.removeCart(cid);
		return "redirect:/cart";
		
		
	}
	@GetMapping("/cancelOrder/{bid}")
	public String CancelOrder(@PathVariable("bid") int id) {
		us.cancelProduct(id);
	    return	"redirect:/gotobooklist";
	}
    @GetMapping("/searchElement")
	public String  SearchByElement(@Param("element") String element,Model m) {
        System.out.println(element);
		List<Product> listProduct=productService.SearchAll(element);
		if(listProduct!=null) {
		m.addAttribute("search",element);
		m.addAttribute("product",listProduct);;
	    return "SearchList";
		}else {
			m.addAttribute("error","search not found");
		return "SearchList";
		}
	}
    @GetMapping("payment")
    public String listPayment(Model m) {
    List<Payments> pay=paymentServices.listPayment();
    m.addAttribute("payment",pay);
	  return "listPayment";
  }
  
	
}
