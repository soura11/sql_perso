package org.eclipse.model;

public class Enseignant extends Personne {
	private int salaire;
	
	
	
	public Enseignant() {
		super();
	}

	public Enseignant (int num, String nom, String prenom, int salaire) {
		super(num, nom, prenom);
		this.salaire = salaire;
	}

	public int getSalaire() {
		return salaire;
	}

	public void setSalaire(int salaire) {
		this.salaire = salaire;
	}

	@Override
	public String toString() {
		return "Enseignant [salaire=" + salaire + " , " + super.toString() + "]"; // ajouter le toString de la classe PERSONNE
	}
	
	
}

                                                

package org.eclipse.model;

public class Etudiant extends Personne {
	private String niveau;
	
	public Etudiant() {
		super();
	}

	public Etudiant(int num, String nom, String prenom, String niveau) {
		super(num, nom, prenom);
		this.niveau = niveau;
	}

	public String getNiveau() {
		return niveau;
	}

	public void setNiveau(String niveau) {
		this.niveau = niveau;
	}

	@Override
	public String toString() {
		return "Etudiant [niveau=" + niveau + " , " + super.toString() + "]";
	}
	                               

package org.eclipse.test;

import org.eclipse.model.Enseignant;
import org.eclipse.model.Etudiant;
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
		Enseignant enseignant = new Enseignant(400, "Baggio", "Roberto", 1700);
		System.out.println(enseignant);
		Etudiant etudiant = new Etudiant(500, "Abruzzi", "John", "Licence");
		System.out.println(etudiant);
		 Personne e = new Etudiant(500, "Abruzzi", "John", "Licence");  un etudiant peut être une personne donc syntaxe juste
		 Etudiant p = new Personnne(200, "Dalton", "Jack") ne marche pas car une personne n est pas un etudiant
		
		System.out.println(etudiant instanceof Etudiant);
		System.out.println(etudiant instanceof Personne);
		System.out.println(personne instanceof Etudiant );
		System.out.println(etudiant.getClass().getSimpleName());
		System.out.println(etudiant.getClass().getSuperclass().getSimpleName());
		
		Personne[] personnes = {personne2, enseignant, etudiant};   // TABLEAU DE DONNEES
		for (Personne elt : personnes) {
			if(elt instanceof Etudiant et) {
				System.out.println(et.getNiveau());
			} else if (elt instanceof Enseignant es) {
				System.out.println(es.getSalaire());
			} else {
				System.out.println(elt.getNum());
				
			}
		}
	}

}

///// METHODE ABSTRAIT 
}
	public abstract void afficherDetails(); /// dans la classe personne 
	
	               
public void afficherDetails() {
		System.out.println(getNom() + " " + niveau);  /// dans la classe etudiant
		          
public void afficherDetails() {                          
		System.out.println(getNom() + " " + salaire);   //// dans la classe enseignant 
