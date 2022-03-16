package in.kenneth.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import in.kenneth.entity.Publisher;

@Repository
public class PublisherDAOJpaImpl implements PublisherDAO {

	private EntityManager entityManager;

	@Autowired
	public PublisherDAOJpaImpl(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

	@Override
	public List<Publisher> findAll() {
		List<Publisher> publishers = entityManager.createQuery("SELECT p FROM Publisher p order by p.phoneNumber").getResultList();

		return publishers;
	}

}
