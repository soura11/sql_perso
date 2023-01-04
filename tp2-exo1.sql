package org.eclipse.model;

import java.util.Arrays;

import javax.swing.plaf.basic.BasicInternalFrameTitlePane.MaximizeAction;

public class Stagiaire {
	private String nom;
	private float[] notes;

	public Stagiaire() {

	}

	public Stagiaire(String nom, float... notes) {
		super();
		this.nom = nom;
		this.notes = notes;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public float[] getNotes() {
		return notes;
	}

	public void setNotes(float... notes) {
		this.notes = notes;
	}
	/* public float calculerMoyenne() {
		int somme = 0;

		for(int i = 0; i < notes.length; i++) {
			somme += notes[i];
		}
		float moyenne = (float) somme / notes.length;
		return moyenne;
	} Fait par souraya*/ 
	
	// corection du prof pour 
	
	public float calculerMoyenne() {
        var somme = 0;
        for (float elt : notes) {
            somme += elt;
        }
        return somme / notes.length;
    }
	 
	@Override
	public String toString() {
		return "Stagiaire [nom=" + nom + ", notes=" + Arrays.toString(notes) + "]";
	}

}
public static void main(String[] args) {
		Stagiaire stag1 = new Stagiaire("Sou", 10, 12, 14);
		System.out.println(stag1);
		System.out.println(stag1.calculerMoyenne());
		System.out.println(stag1.trouverMax());
		System.out.println(stag1.trouverMin());
		
	}
	// classe stagiaire trouverMin et trouverMax
	
	public float trouverMax() {
		 var max = notes[0];
		  for(var i = 1; i < notes.length; i++) {
			  if (max < notes[i]) {
				  max = notes[i];
			  }
		  } return max;
	  }
	  
	  public float trouverMin() {
		  var min = notes[0];
		  for (int i = 1; i < notes.length; i++) {
			  if (min > notes[i]) {
				  min = notes[i];
			  }
		  } return min;
	  }
