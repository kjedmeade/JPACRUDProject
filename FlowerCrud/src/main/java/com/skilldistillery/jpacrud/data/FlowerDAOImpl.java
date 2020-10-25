package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Flower;


@Transactional
@Service
public class FlowerDAOImpl implements FlowerDAO{
	
	
	@PersistenceContext
	  private EntityManager em;



	@Override
	public Flower findById(Integer id) {
		return em.find(Flower.class, id);
		// TODO Auto-generated method stub
	
	}
	@Override
	public Flower updateById(Integer id, Flower flower) {
		Flower flowerToUpdate = em.find(Flower.class, id);
		flowerToUpdate.setName(flower.getName());
		flowerToUpdate.setPronounciation(flower.getPronounciation());
		flowerToUpdate.setFamily(flower.getFamily());
		flowerToUpdate.setNoOfSpecies(flower.getNoOfSpecies());
		flowerToUpdate.setExampleSpecies(flower.getExampleSpecies());
		
		return flowerToUpdate;
		// TODO Auto-generated method stub
		
	}
	


	@Override
	public Flower createFlower(Flower flower) {
		em.persist(flower);
		return flower;
		// TODO Auto-generated method stub
		
	}

	
	@Override
	public boolean deleteFlower(Flower flower) {
		em.remove(flower);
		boolean flowerRemoved = !em.contains(flower);
		// TODO Auto-generated method stub
		return flowerRemoved;
		
	}


	
	@Override
	public List<Flower> listAll() {
		List <Flower> flowerList= null;
		String jpql = "Select f from Flower f";
		flowerList=  em.createQuery(jpql, Flower.class).getResultList();
		return flowerList;
		}
	
		
}
