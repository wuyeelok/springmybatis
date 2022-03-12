package in.kenneth.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import in.kenneth.dao.EmployeeMapper;
import in.kenneth.entity.Employee;

@Controller
public class EmployeeController {

	@Autowired
	EmployeeMapper mapper;

	@GetMapping("/")
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView("list-employees");
		mav.addObject("listemployees", mapper.getAllEmployees());
		return mav;
	}

	@GetMapping("/showFromForAddEmployee")
	public ModelAndView prepareNewEmployee() {
		ModelAndView mav = new ModelAndView("add-employee");

		mav.addObject("employee", new Employee());

		return mav;
	}

	@PostMapping("/saveProcess")
	public String saveProcess(@Valid @ModelAttribute("employee") Employee employee, BindingResult result) {

		if (result.hasErrors()) {
			return "add-employee";
		}

		mapper.saveEmployee(employee);

		return "redirect:/";
	}

	@GetMapping("/deleteEmployee")
	public String deleteEmployee(@RequestParam("employeeId") int employeeId) {

		mapper.deleteEmployee(employeeId);

		return "redirect:/";
	}

	@GetMapping("/editEmployee")
	public ModelAndView editEmployee(@RequestParam("employeeId") int employeeId) {
		ModelAndView mav = new ModelAndView("add-employee");
		mav.addObject("employee", mapper.findById(employeeId));

		return mav;
	}
}
