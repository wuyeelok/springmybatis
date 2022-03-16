package in.kenneth;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.List;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import in.kenneth.dao.BookMapper;
import in.kenneth.dao.PublisherMapper;
import in.kenneth.dao.UserDAO;
import in.kenneth.entity.Book;
import in.kenneth.entity.Publisher;
import in.kenneth.entity.User;

@SpringBootTest
class SpringbootmybatisjspmysqldemoApplicationTests {

	@Autowired
	private PublisherMapper publisherMapper;

	@Autowired
	private BookMapper bookMapper;

	@Autowired
	private UserDAO userDAO;

	@Test
	public void findPublishers() {

		List<Publisher> publishers = publisherMapper.findAll();

		assertThat(publishers.size()).isGreaterThan(0);

		for (Publisher p : publishers) {
			Assertions.assertNotNull(p.getPhoneNumber());
		}
	}

	@Test
	public void findBookByGenre() {

		List<Book> books = bookMapper.findByGenre("Java");

		assertThat(books.size()).isGreaterThan(0);
	}

	@Test
	public void findUserByIdUsingJPA() {
		User u = userDAO.findById(2);
		Assertions.assertNotNull(u);
	}

	@Test
	public void findUserByFName() {
		List<User> users = userDAO.findByFirstName("o");

		for (User u : users) {
			System.out.println("First Name: " + u.getFirstName());
		}

		assertThat(users.size()).isEqualTo(2);
	}
}
