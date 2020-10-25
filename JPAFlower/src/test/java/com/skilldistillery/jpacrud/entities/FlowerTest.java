package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class FlowerTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Flower flower;
	

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf =Persistence.createEntityManagerFactory("FlowerPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em=emf.createEntityManager();
		flower = em.find(Flower.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		flower=null;
	}

	@Test
	void test_flower_entity_mapping() {
			assertNotNull(flower);
			assertEquals("Peony", flower.getName());
			assertEquals("pee uh nee", flower.getPronounciation());
			assertEquals(33, flower.getNoOfSpecies());
			assertEquals("perennial", flower.getType());
			assertEquals("Paeonia algeriensis", flower.getExampleSpecies());
		}
	}


