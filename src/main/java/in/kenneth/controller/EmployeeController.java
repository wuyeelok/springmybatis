package in.kenneth.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import in.kenneth.dao.EmployeeMapper;

@Controller
public class EmployeeController {

	@Autowired
	EmployeeMapper mapper;

	@GetMapping("/")
	public String index() {
		System.out.println(mapper.getAllEmployees());
		return "list-employees";
	}

}
