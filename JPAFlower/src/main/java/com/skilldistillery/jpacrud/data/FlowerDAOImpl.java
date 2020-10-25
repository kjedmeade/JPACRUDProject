package com.skilldistillery.jpacrud.data;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.skilldistillery.jpacrud.entities.Flower;

public class FlowerDAOImpl implements FlowerDAO {

	private static EntityManagerFactory emf = Persistence.createEntityManagerFactory("VideoStore");
	
	@Override
		public Flower update(int id, Flower flower) {
			EntityManager em = emf.createEntityManager();
			
			Flower flowerFound = em.find(Flower.class, id);
			
			em.getTransaction().begin();
			
			flowerFound.setId(flower.getId());
			flowerFound.setName(flower.getName());
			flowerFound.setPronounciation(flower.getPronounciation());
			flowerFound.setFamily(flower.getFamily());
			flowerFound.setNoofspecies(flower.getNoofspecies());
			flowerFound.setType(flower.getType());
			flowerFound.setExamplespecies(flower.getExamplespecies());
			
			System.out.println(flowerFound);
			em.flush();
			em.getTransaction().commit();
			
			// find the actor to be updated
			// assign all the data from the sent in Actor object to the one in the database
			return flowerFound;
		}


		@Override
		public Flower create(Flower flower) {
			EntityManager em = emf.createEntityManager();
			// start the transaction
			em.getTransaction().begin();
			em.persist(flower);
			System.out.println("Flower: " + flower);
			em.flush();
			// commit the changes (actually perform the operation)
			em.getTransaction().commit();
			em.close();
			return flower;
		}

		@Override
		public boolean delete(int id) {
			EntityManager em = emf.createEntityManager();
			// start the transaction
			Flower toDelete = em.find(Flower.class, id);
			em.getTransaction().begin();
			em.remove(toDelete);
			boolean flowerWasDeleted =!em.contains(toDelete);
			em.flush();
			// commit the changes (actually perform the operation)
			em.getTransaction().commit();
			em.close();
			return flowerWasDeleted;
			
		}

}
