package in.kenneth.dao;

import java.util.List;

import in.kenneth.entity.User;

public interface UserDAO {

	public User findById(int id);

	public List<User> findByFirstName(String fName);
}
