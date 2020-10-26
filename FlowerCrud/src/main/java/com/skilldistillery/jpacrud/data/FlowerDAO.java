package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Flower;

public interface FlowerDAO {

	Flower findById(Integer id);

	Flower updateById(Integer id, Flower flower);

	Flower createFlower(Flower flower);

	boolean deleteFlower(Integer id);

	List<Flower> listAll();


		

	}



