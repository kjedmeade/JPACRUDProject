package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class Flower {
	
		@Id
		@GeneratedValue(strategy = GenerationType.IDENTITY)
		private int id;
		private String name;
		private String pronounciation;
		private String family;
		@Column (name ="no_of_species")
		private Integer noOfSpecies;
		
		private String type;
		@Column(name ="example_species")
		private String exampleSpecies;
		
		public Flower() {
			super();
		}

		
		public Flower(int id, String name, String pronounciation, String family, Integer noOfSpecies, String type,
				String exampleSpecies) {
			super();
			this.id = id;
			this.name = name;
			this.pronounciation = pronounciation;
			this.family = family;
			this.noOfSpecies = noOfSpecies;
			this.type = type;
			this.exampleSpecies = exampleSpecies;
		}
		
		public Flower(String name, String pronounciation, String family, Integer noOfSpecies, String type,
				String exampleSpecies) {
			super();
		
			this.name = name;
			this.pronounciation = pronounciation;
			this.family = family;
			this.noOfSpecies = noOfSpecies;
			this.type = type;
			this.exampleSpecies = exampleSpecies;
		}



		


		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getPronounciation() {
			return pronounciation;
		}

		public void setPronounciation(String pronounciation) {
			this.pronounciation = pronounciation;
		}

		public String getFamily() {
			return family;
		}

		public void setFamily(String family) {
			this.family = family;
		}

		public Integer getNoOfSpecies() {
			return noOfSpecies;
		}

		public void setNoOfSpecies(Integer noOfSpecies) {
			this.noOfSpecies = noOfSpecies;
		}

		public String getType() {
			return type;
		}

		public void setType(String type) {
			this.type = type;
		}

		public String getExampleSpecies() {
			return exampleSpecies;
		}

		public void setExampleSpecies(String exampleSpecies) {
			this.exampleSpecies = exampleSpecies;
		}

		@Override
		public String toString() {
			return "Flower [id=" + id + ", name=" + name + ", pronounciation=" + pronounciation + ", family=" + family
					+ ", noOfSpecies=" + noOfSpecies + ", type=" + type + ", exampleSpecies=" + exampleSpecies + "]";
		}

		
		
	
}
