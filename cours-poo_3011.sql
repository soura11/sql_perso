30/11/2022
		
	package org.eclipse.model;

public class Personne {
	private int num;
	private String nom;
	private String prenom;
	
	private static int nbrPersonnes;
	
	public Personne( ) {
		Personne.nbrPersonnes++;
		
	}
	public Personne(int num, String nom, String prenom) {
		this.num = num;
		this.nom = nom;
		this.prenom = prenom;
		Personne.nbrPersonnes++;
	}

	public void setNum(int value) {
		if (value > 0) {
			num = value;
		} else {
			num = 0;
		}
	}
	public int getNum() {
		return num;
	}
	
	
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public static int getNbrPersonnes() {
		return nbrPersonnes;
	}
	public String toString() {
		return "Personne [num=" + num + ", nom=" + nom + ", prenom=" + prenom + "]";
	}

}	

package org.eclipse.test;

import org.eclipse.model.Personne;

public class Program {

	public static void main(String[] args) {
		System.err.println(Personne.getNbrPersonnes());
		Personne personne = new Personne();
		personne.setNum(100);
		personne.setNom("wick");
		personne.setPrenom("john");
		System.out.println(personne);
		System.err.println(Personne.getNbrPersonnes());
		
		Personne personne2 = new Personne(200, "Dalton", "Jack");
		System.out.println(personne2);
		System.err.println(Personne.getNbrPersonnes());
	}

}                        

// CONSTRUCTEUR NB PERSONNE DANS UN BLOC

package org.eclipse.model;

public class Personne {
	private int num;
	private String nom;
	private String prenom;
	
	private static int nbrPersonnes;
	
	{
		Personne.nbrPersonnes++;        /* dans le bloc */    
	}
	
	public Personne( ) {
		
		
	}
	public Personne(int num, String nom, String prenom) {
		this.num = num;
		this.nom = nom;
		this.prenom = prenom;
		
	}

	public void setNum(int value) {
		if (value > 0) {
			num = value;
		} else {
			num = 0;
		}
	}
	public int getNum() {
		return num;
	}
	
	
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public static int getNbrPersonnes() {
		return nbrPersonnes;
	}
	public String toString() {
		return "Personne [num=" + num + ", nom=" + nom + ", prenom=" + prenom + "]";
	}

}

public class Program {

	public static void main(String[] args) {
		System.err.println(Personne.getNbrPersonnes());
		Personne personne = new Personne();
		personne.setNum(100);
		personne.setNom("wick");
		personne.setPrenom("john");
		System.out.println(personne);
		System.err.println(Personne.getNbrPersonnes());
		
		Personne personne2 = new Personne(200, "Dalton", "Jack");
		System.out.println(personne2);
		System.err.println(Personne.getNbrPersonnes());
	}
