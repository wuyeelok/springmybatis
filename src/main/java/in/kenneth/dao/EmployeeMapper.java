package in.kenneth.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import in.kenneth.entity.Employee;
import in.kenneth.util.MyBatisUtil;

@Repository
public class EmployeeMapper {
	public List<Employee> getAllEmployees() {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		List<Employee> employeeList = session.selectList("getAllEmployees");
		session.commit();
		session.close();
		return employeeList;
	}

	public void saveEmployee(Employee employee) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		session.insert("insertEmployee", employee);
		session.commit();
		session.close();
	}

	public void deleteEmployee(Integer employeeId) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		session.delete("deleteEmployee", employeeId);
		session.commit();
		session.close();
	}

	public Employee findById(Integer employeeId) {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		Employee employee = (Employee) session.selectOne("findById", employeeId);
		session.commit();
		session.close();
		return employee;
	}
}
