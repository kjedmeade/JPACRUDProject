package com.skilldistillery.jpacrud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpacrud.data.FlowerDAO;
import com.skilldistillery.jpacrud.entities.Flower;

@Controller
public class FlowerController {
	@Autowired
	FlowerDAO flowerDao;
	
	@RequestMapping(path="/")
	public String index(Model model) {
		List<Flower> flowerList = flowerDao.listAll();
		model.addAttribute("flowerList", flowerList);
	  return "index";
	  // return "index"; // if using a ViewResolver.
	}

	@RequestMapping(path="GetFlowerById.do", params = "fid", method = RequestMethod.GET)
	public ModelAndView showFlower(Integer fid) {
		ModelAndView mv = new ModelAndView();
		Flower flowerFound =flowerDao.findById(fid);
		mv.addObject("flower", flowerFound);
		mv.setViewName("displayflower");
		return mv;
		// return "index"; // if using a ViewResolver.
	}
	
	@RequestMapping(path="UpdateFlower.do", method = RequestMethod.GET)
	public ModelAndView updateFlower(Integer id, String name, String pronounciation, String family, Integer noOfSpecies, String type, String exampleSpecies) {
		ModelAndView mv = new ModelAndView();
		Flower flower = new Flower(id, name, pronounciation, family, noOfSpecies, type, exampleSpecies);
		Flower updatedFlower =flowerDao.updateById(id, flower);
		mv.addObject("updatedFlower", updatedFlower);
		mv.setViewName("updatedresult");
		return mv;
		// return "index"; // if using a ViewResolver.
	}
	
	@RequestMapping(path="CreateNewFlower.do", method = RequestMethod.GET)
	public ModelAndView createNewFlower(String name, String pronounciation, String family, Integer noOfSpecies, String type, String exampleSpecies) {
		ModelAndView mv = new ModelAndView();
		Integer id=0;
		Flower flower = new Flower(id, name, pronounciation, family, noOfSpecies, type, exampleSpecies);
		Flower createdFlower =flowerDao.createFlower(flower);
		mv.addObject("createdFlower", createdFlower);
		mv.setViewName("createdresult");
		return mv;
		// return "index"; // if using a ViewResolver.
	}
//	
	@RequestMapping(path="DeleteGivenFlower.do")
	public ModelAndView deleteGivenFlower(Integer id) {
		ModelAndView mv = new ModelAndView();
		boolean flowerDeleted =flowerDao.deleteFlower(id);
		mv.addObject("flowerDeleted", flowerDeleted);
		mv.setViewName("deletedresult");
		return mv;
		// return "index"; // if using a ViewResolver.
	}

	

}
