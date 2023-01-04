Personne avec plusieurs adresses 
 ===> Prendre la classe adresse et personne
 ====> Mettre un tableau d adresse dans la classe personne

import java.util.Arrays;

public class Personne {
	private int num;
	private String nom;
	private String prenom;
	private static int nbrPersonnes;
	private Adresse[] adresses;  // [] pour indiquer un tableau
	
	public Personne(int num, String nom, String prenom, Adresse[] adresses) {
		super();
		this.num = num;
		this.nom = nom;
		this.prenom = prenom;
		this.adresses = adresses;
	}
	
	
	
	{
		Personne.nbrPersonnes++;
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
	public Adresse[] getAdresses() {
		return adresses;
	}
	public void setAdresses(Adresse[] adresses) {
		this.adresses = adresses;
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
	@Override
	public String toString() {
		return "Personne [num=" + num + ", nom=" + nom + ", prenom=" + prenom + ", adresses="
				+ Arrays.toString(adresses) + "]";
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
		Adresse adresse1 = new Adresse("paradis", "13006", "Marseille");      
		Adresse adresse2 = new Adresse("sauveur", "13007", "Marseille");            
		Adresse[] adresse = new Adresse[] { adresse1, adresse2 };    // tableau
		Personne personne3 = new Personne(300, "Maggio", "Candice", adresse);
		System.out.println(personne3);
	}

}



// deuxième methode
======> Aller dans la classe Personne et mettre le tableau (...) pour que dans la methode main on met dans une seul ligne l adresse

public Personne(int num, String nom, String prenom, Adresse... adresses) {
        super();
        this.num = num;
        this.nom = nom;
        this.prenom = prenom;
        this.adresses = adresses;
    }


// classe programme

		Adresse adresse1 = new Adresse("paradis", "13006", "Marseille");
		Adresse adresse2 = new Adresse("plantes", "75014", "Paris");
	    Personne personne3 = new Personne(300, "Maggio", "Candice",adresse1, adresse2);