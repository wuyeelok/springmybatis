package in.kenneth.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import in.kenneth.entity.User;

@Repository
public class UserDAOJpaImpl implements UserDAO {

	@Autowired
	private EntityManager entityManager;

	@Override
	public User findById(int id) {

		User user = entityManager.find(User.class, id);

		return user;
	}

	@Override
	public List<User> findByFirstName(String fName) {

		Query theQuery = entityManager.createQuery("select u from User u where u.firstName like :fname");

		theQuery.setParameter("fname", "%" + fName + "%");

		List<User> users = theQuery.getResultList();

		return users;
	}

}
