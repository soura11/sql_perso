
// 
package org.eclipse.model;

public class Program {

	public static void main(String[] args) {
		Personne personne = new Personne();
		personne.num = 100;
		personne.nom = "wick";
		personne.prenom = "john";
		System.out.println(personne);
		
		
		package org.eclipse.model;

public class Personne {
	int num;
	String nom;
	String prenom;

public String toString() {
	return num + " " + nom + " " + prenom;
	
	
	// encapsulation
	
	package org.eclipse.test;

import org.eclipse.model.Personne;

public class Program {

	public static void main(String[] args) {
		Personne personne = new Personne();
		personne.setNum(100);                 // ici nous voulons une valeur positif
		personne.nom = "wick";
		personne.prenom = "john";
		System.out.println(personne);

	}
                     
}
package org.eclipse.model;

public class Personne {
	private int num; // ici nous avons mit en privée
	public String nom;
	public String prenom;

	public void setNum(int value) { // ici nous avons ajouté une new methode set pour modifié
		if (value > 0) {
			num = value;
		} else {
			num = 0;
		}
	}
	public int getNum() {       // ici généré le get pour récupéré la valeur
		return num;
	}

	public String toString() {
		return "Personne [num=" + num + ", nom=" + nom + ", prenom=" + prenom + "]";
	}

}
// RECOMMANDATION METTRE LES ATTRIBUT EN PRIVé ET AVOIR DES SET ET GET

package org.eclipse.model;

public class Personne {
	private int num;
	private String nom;
	private String prenom;

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
	public String toString() {
		return "Personne [num=" + num + ", nom=" + nom + ", prenom=" + prenom + "]";
	}
                
}package org.eclipse.test;

import org.eclipse.model.Personne;

public class Program {

	public static void main(String[] args) {
		Personne personne = new Personne();
		personne.setNum(100);
		personne.setNom(wick);
		personne.setPrenom(john);
		System.out.println(personne);

	}
 
 // METTRE UN CONSTRUCTEUR PERSONALISE +REDEFINIR NOTRE CONSTRUCTEUR

package org.eclipse.test;

import org.eclipse.model.Personne;

public class Program {

	public static void main(String[] args) {
		Personne personne = new Personne();   // Personne constructeur par default
		personne.setNum(100);
		personne.setNom("wick");
		personne.setPrenom("john");
		System.out.println(personne);
		
		Personne personne2 = new Personne(200, "Dalton", "Jack");
		System.out.println(personne2);
	}

}

             
package org.eclipse.model;

public class Personne {
	private int num;
	private String nom;
	private String prenom;
	public Personne( ) {    // NEW CONSTRUCTEUR 
		
	}
	public Personne(int num, String nom, String prenom) {       // CONSTRUCTEUR PERSONALISE
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
	public String toString() {
		return "Personne [num=" + num + ", nom=" + nom + ", prenom=" + prenom + "]";
	}

}