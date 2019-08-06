package co.grandcircus.HotelRating;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HotelController {

	@Autowired
	private HotelDao dao;
	
	
	@RequestMapping("/")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView("index");
		return mv;	
	}


	@PostMapping("/results-page")
	public ModelAndView ShowResultsList(@RequestParam("city") String city) {
		ModelAndView mav = new ModelAndView("results-page");
		mav.addObject("hotel", dao.findByCity(city));
		mav.addObject("city", city);
		return mav;
	}

	@PostMapping("/details")
	public ModelAndView details(@RequestParam("name") String name) {
		ModelAndView mv = new ModelAndView("details");
		mv.addObject("hotel", dao.findByName(name));
		mv.addObject("name", name);
		return mv;	
	}

		

			






}//end class
