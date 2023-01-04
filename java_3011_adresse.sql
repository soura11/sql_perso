package org.eclipse.model;

public class Adresse {
	private String rue;
	private String codePostal;
	private String ville;
	


	public Adresse() {
	}
	
	public Adresse(String rue, String codePostal, String ville) {
		this.rue = rue;
		this.codePostal = codePostal;
		this.ville = ville;
	}

	public String getRue() {
		return rue;
	}
	public void setRue(String rue) {
		this.rue = rue;
	}
	public String getCodePostal() {
		return codePostal;
	}
	public void setCodePostal(String codePostal) {
		this.codePostal = codePostal;
	}
	public String getVille() {
		return ville;
	}
	public void setVille(String ville) {
		this.ville = ville;
	}

	public String toString() {
		return "Adresse [rue=" + rue + ", codePostal=" + codePostal + ", ville=" + ville + "]";
	}
	
	

}


                      
package org.eclipse.model;

public class Personne {
	private int num;
	private String nom;
	private String prenom;
	private Adresse adresse;
	
	private static int nbrPersonnes;
	
	{
		Personne.nbrPersonnes++;
	}
	
	public Personne( ) {
		
	}
	
	public Personne(int num, String nom, String prenom) {
		super();
		this.num = num;
		this.nom = nom;
		this.prenom = prenom;
	}

	public Personne(int num, String nom, String prenom, Adresse adresse) {
		this.num = num;
		this.nom = nom;
		this.prenom = prenom;
		this.adresse = adresse;
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
	
	public Adresse getAdresse() {
		return adresse;
	}
	public void setAdresse(Adresse adresse) {
		this.adresse = adresse;
	}
	
	public static int getNbrPersonnes() {
		return nbrPersonnes;
	}
	@Override
	public String toString() {
		return "Personne [num=" + num + ", nom=" + nom + ", prenom=" + prenom + ", adresse=" + adresse + "]";
	}
	

}
                   		  
package org.eclipse.test;

import org.eclipse.model.Adresse;
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
		Adresse adresse = new Adresse("paradis", "13006", "Marseille");               
		Personne personne3 = new Personne(300, "Maggio", "Candice", adresse);             
		System.out.println(personne3);
	}

}
/* ou mettre l'adresse dans une seul ligne */
Personne personne3 = new Personne(300, "Maggio", "Candice", new Adresse("paradis", "13006", "Marseille"));

/* modifié le codePostal */
personne3.getAdresse().setCodePostal("13008");
System.out.println(personne3);



