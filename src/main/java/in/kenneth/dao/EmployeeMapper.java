package in.kenneth.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import in.kenneth.entity.Employee;

@Mapper
public interface EmployeeMapper {

	// Method name has to be equal to XML id

	public List<Employee> getAllEmployees();

	public void insertEmployee(Employee employee);

	public void deleteEmployee(Integer employeeId);

	public Employee findById(Integer employeeId);

	public void updateEmployee(Employee employee);

}
