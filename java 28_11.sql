package org.eclips.test;

public class Program {

		
	public static void main(String[] args) {
				/* typage statique */
		int x = 5;
		System.out.println(x);
		
			/* typage dynamique : initialisation obligatoire (Java 11) */
			
		var z = 10;
		System.out.println(z + x);
		
		/*
		var z = 10l; l indique operateur long car la valeur peut changer de valeur
		var z = 10f; f indique operateur float car la valeur peut changer de valeur */
		
		
		Convertion entre type compatible cast
		 int x = 100;
		byte b = (byte)x;
		System.out.println(b); 
		CONSOLE/* affichage 100 */
		
		Convertion entre type non compatible caractère en chiffre
		String s = "100";
		int i = Integer.parseInt(s);
		System.out.println(s);
		
		Convertion entre type non compatible caractère en chiffre
		int x = 100;
		String e = String.valueOf(x);
		System.out.println(e);
		
		String s = Integer.toString(x);
		System.out.println(s);
		
		String str = "" + x;
		System.out.println(str);
		
		/* afficher la parité de x */
		
		if (x % 2 == 0) {
			System.out.println("Le nombre " + x + " pair");
		}
		else {
			System.out.println("impair");
		}
		
		methode de ternary operator: écrire une condition sur une seul ligne
		int x = 10;
		System.out.println(x % 2 == 0 ? "pair" : "impair");
		
		/* exercice 1 */
		Scanner scanner = new Scanner(System.in);
		
		System.out.println("Merci de saisir un entier");
		int a =scanner.nextInt();
		System.out.println("Merci de saisir un entier");
		int b = scanner.nextInt();
		System.out.println(a + b);
		scanner.close();
		
		/*exercice 2 positif et negatif*/
		
		import java.util.Scanner;

public class Program {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		
		System.out.println("Merci de saisir un entier différent de zero ");
		int saisie1 =scanner.nextInt();
		System.out.println("Merci de saisir un entier différent de zero");
		int saisie2 = scanner.nextInt();
			
		 /* if (saise1 > 0 && saisie2 > 0 || saisie1 < 0 && saisie2 < 0=) { */
		/* if ((saisie1 > 0) ^ (saisie2 < 0)) { */
		/* if (saisie1 > 0 == saisie2 > 0) (boolean true/false) { */
			System.out.println("résultat positif"); 
			}
		else {
			System.out.println("résultat négatif");
		}
		scanner.close();
		}
		

	}
	
	/* Chaine de caractère */
	package org.eclips.test;

public class Program {

	public static void main(String[] args) {
		String string = "bonjour";
		System.out.println(string.length());
		System.out.println(string.charAt(0));
		}
	 /* console affiche = 7, b */
		

	}
	
	/*Scanner */
	String string = "bonjour";
		System.out.println(string.length());
		System.out.println(string.charAt(0));
		System.out.println(string.substring(3));
		System.out.println(string.substring(3, 5));
		System.out.println(string.contains("jo"));
		System.out.println(string.contains("ja"));
		System.out.println(string.indexOf("j"));
		System.out.println(string.indexOf("a"));
		System.out.println(string.equals("bonjour"));
		System.out.println(string.equals("Bonjour")); False car maj sur b
		System.out.println(string.equalsIgnoreCase("Bonjour")); True car ignorer maj er mini
		System.out.println(string.indexOf("o")); /* position du o */
		System.out.println(string.indexOf("o", 2)); /* position à partir de la 2eme position */
		System.out.println(string.lastIndexOf("o")); /* derniere position */
		System.out.println(string.endsWith("jour")); /* se termine par */
		System.out.println(string.startsWith("bon"));
		
		
		/* SCANNER avec chaine de caractère */
		
		public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.println("Merci de bien saisir votre nom");
		String nom = scanner.nextLine();
		System.out.println("Votre nom est " + nom);
		scanner.close();
		
		/* choix d'operateur */
		Scanner scanner = new Scanner(System.in);
		System.out.println("Saisir un nombre entier");
		int a = scanner.nextInt();
		System.out.println("Saisir un nombre entier");
		int b = scanner.nextInt();
		
		System.out.println("Saisir un operateur, +, -, *,  ou / .");
		var op = scanner.next(); ou String op = scanner.next();
		 
		if (op.equals("+")) {
			System.out.println(a + b);
		}
		else if (op.equals("*")) {
			System.out.println(a * b);
	      }
		else if (op.equals("-")) {
			System.out.println(a - b);
		}
		else if (op.equals("/")) {
			System.out.println(a / b);
		}
		else {
			System.out.println("Operateur inconnu");
			
			/* ecriture avec switch (notion d'égalité") */
			
			switch (op) {
        case "+", "plus":
            System.out.println(a + b);
            break;
        case "-":
            System.out.println(a - b);
            break;
        case "*":
            System.out.println(a * b);
            break;
        case "/":
            System.out.println(a / b);
            break;
        default:
            System.out.println("Opérateur inconnu");
            break;
        }
        scanner.close();
		
		/* ecriture plus facile avec switch */
		
        switch (op) {
        case "+", "plus" -> System.out.println(a + b);
        case "-" -> System.out.println(a - b);
        case "*" -> System.out.println(a * b);
        case "/" -> System.out.println(a / b);
        default -> System.out.println("Opérateur inconnu");
        }
        scanner.close();
		/* ecriture plus facile avec switch */
		 
		 int resultat = switch (op) {
	        case "-" -> a - b;
	        case "*" -> a * b;
	        case "/" -> a / b;
	        default -> a + b;
	        };
	        System.out.println(resultat);
	        scanner.close();
		
		/* ecriture plus facile avec switch et avec yield */
		int resultat = switch (op) {
	        case "-" -> {
	        	var soustraction = a - b;
	        	yield soustraction;
	        }
	        case "*" -> a * b;
	        case "/" -> a / b;
	        default -> a + b;
	        };
	        System.out.println(resultat);
	        scanner.close();
			

			/* exercice les mois de l'année */
			switch (mois) {
		
		case 1, 3, 5, 7, 8, 10, 12 -> System.out.println("31 jours");
		case 4, 6, 9, 11 -> System.out.println("30 jours");
		case 2 -> System.out.println("29 jours");
		default -> System.out.println("Erreur"); 
		}
		scanner.close();
		
		/* même methode */
		
		public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		
		System.out.println("Veuillez saisir un nombre compris entre 1 et 12");
		String mois = scanner.next();
	
	    String resultat = switch (mois) {
		case "1", "3", "5", "7", "8", "10", "12" -> "31 jours";
		case "4", "6", "9", "11" -> "30 jours";
		case "2" -> "29 jours";
		default -> "Erreur"; 
		};
		System.out.println(resultat);
		scanner.close();
		
		
		/* une constante */
		final float MATH_PI = 3.14f;
		System.out.println(MATH_PI);
		
		/* boucle tant que */
		(/* incrementation */
		
		/* nombre pair ou impair */
		
		package org.eclips.test;

public class Program {

	public static void main(String[] args) {
		
		int i =0; 
				
		while (i <= 10) {
			if (i % 2 == 0) {
			// System.out.println(i); (pair)
			}
			else {
				System.out.println(i); (impair)
				
			}
			i ++;
			
			/* autre methode */
			public class Program {

	public static void main(String[] args) {
		
		int i =0; 
				
		while (i <= 10) {
			System.out.println(i);
			i+=2;
			
			/* boucle for */
			
			for (int i = 0; i < 5; i++) {
			System.out.println(i);
		}
		
		/* calculer la moyenne */
		
		Scanner scanner = new Scanner(System.in);
		
		int somme = 0;

		for (int i = 0; i < 3; i++) {
			System.out.println("Merci de saisir une note " + (i + 1));
			int note = scanner.nextInt();
			somme += note;
		}
		double moyenne = (double) somme /3;
		System.out.println(moyenne);
		scanner.close();
		}
		
		
		// calculer la moyenne
		
		Scanner scanner = new Scanner(System.in);
		double[] notes = new double[3];
		double somme = 0;

		for (int i = 0; i < notes.length; i++) {
			System.out.println("Merci de saisir une note " + (i + 1));
			notes[i] = scanner.nextInt();
			somme += notes[i];
		}
		double moyenne = (double) somme /3;
		System.out.println(moyenne);
		System.out.println(notes);
		scanner.close();
		}
		
		
		// calculer la moyenne + tableau + affichage des notes
		
		Scanner scanner = new Scanner(System.in);
		System.out.println("Taille du tableau");
		int taille = scanner.nextInt();
		double[] notes = new double[taille];
		double somme = 0;

		for (int i = 0; i < notes.length; i++) {
			System.out.println("Merci de saisir une note " + (i + 1));
			notes[i] = scanner.nextInt();
			somme += notes[i];
		}
		double moyenne = (double) somme /taille;
		System.out.println(moyenne);
		
		for (int i = 0; i< notes.length; i++) {  /* affichage des notes */
			System.out.println(notes[i]);
		}
	
		System.out.println(Arrays.toString(notes)); /* affichage des notes */
		scanner.close();
		}
		
		/* affichage des notes du tableau */
		
		package org.eclips.test;

import java.util.Arrays;
import java.util.Scanner;

public class Program {

	public static void main(String[] args) {
		
		// calculer la moyenne
		
		Scanner scanner = new Scanner(System.in);
		System.out.println("Taille du tableau");
		int taille = scanner.nextInt();
		double[] notes = new double[taille];
		double somme = 0;

		for (int i = 0; i < notes.length; i++) {
			System.out.println("Merci de saisir une note " + (i + 1));
			notes[i] = scanner.nextInt();
			somme += notes[i];
		}
		double moyenne = (double) somme /taille;
		System.out.println(moyenne);
		
		for (int i = 0; i< notes.length; i++) {
			System.out.println(notes[i]);
		}
		
		for (double elt : notes) {
			System.out.println(elt);
		}
		
		System.out.println(Arrays.toString(notes));
		scanner.close();
		}
}

				// variable arguments
public class Program {


	public static void main(String[] args) {
		System.out.println(somme(5,7));
		System.out.println(somme(5,7, 3));
		System.out.println(somme(5, 7, 3, 6, 4));
		System.out.println(somme(5,7, 3, 6, 8, 10));
		System.out.println(somme(5,7, 3, 8, 6, 7, 3, 0, 1));
	}
	public static int somme(int ... args) {
		var resultat = 0;
		for (int elt :  args) {
			resultat = resultat + elt;
		}
		return resultat;
	}
		/* avec un string */
		
		package org.eclips.test;

public class Program {


	public static void main(String[] args) {
		System.out.println(totale("bon", "jour"));
		System.out.println(totale("Hi","bon", "jour", "ciao"));
	}
	public static int totale(String ... args) {
		var resultat = 0;
		for (String elt :  args) {
			resultat = resultat + elt.length();
		}
		return resultat;
	}
}
		
		
		
		