package in.kenneth.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import in.kenneth.dao.PublisherMapper;
import in.kenneth.entity.Publisher;

@Controller
public class PublisherController {

	@Autowired
	private PublisherMapper publisherMapper;

	@GetMapping("/showAllPublisher")
	public ModelAndView findAll() {
		ModelAndView mav = new ModelAndView("sqlResult");

		List<Publisher> publishers = this.publisherMapper.findAll();

		mav.addObject("publishers", publishers);

		return mav;
	}

}
