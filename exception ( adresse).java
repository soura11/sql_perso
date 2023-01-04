package org.eclipse.exception;

public class IncorrectCodePostalException extends Exception {
	public IncorrectCodePostalException() {
		System.out.println("Le code postal doit contenir exactement 5 caractères");
	}
}
           

package org.eclipse.exception;

public class IncorrectRueException extends Exception {
	public IncorrectRueException() {
		System.out.println("Le nom de la rue doit être en majuscule");
	}		
}
                 
public Adresse(String rue, String codePostal, String ville)
			throws IncorrectCodePostalException, IncorrectRueException  {
		if (codePostal.length() != 5) {
			throw new IncorrectCodePostalException();
		}
		if (! rue.toUpperCase().equals(rue)) {
			throw new IncorrectRueException();
		}
		this.rue = rue;
		this.codePostal = codePostal;
		this.ville = ville;
	}

	