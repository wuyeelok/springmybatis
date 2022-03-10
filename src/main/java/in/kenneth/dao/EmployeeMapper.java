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
}
