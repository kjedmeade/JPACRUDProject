package com.skilldistillery.jpacrud;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import com.skilldistillery.jpacrud.data.FlowerDAO;
import com.skilldistillery.jpacrud.data.FlowerDAOImpl;
import com.skilldistillery.jpacrud.entities.Flower;

@SpringBootTest
class FlowerCrudApplicationTests {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private FlowerDAO flowerDao;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("FlowerPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		flowerDao = new FlowerDAOImpl();
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		flowerDao = null;
	}

	@Test
	void test_flower_entity_mapping() {
		assertEquals("Dahlia", flowerDao.findById(8).getName());
	}
}
