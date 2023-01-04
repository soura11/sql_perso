package org.eclipse.test;

public class Main {

	public static void main(String[] args) {
		int x = 7, y = 0;
		try {
			System.out.println(x / y);
		} catch (Exception e) {
			System.err.println("Exception capturée");
		}
		
		System.out.println("fin");

	}

}           System.err.println("Exception capturée" + e.getMessage()); // 
                        
TOUT INFO SUR L EXCEPTION , LA CLASSE, LE MESSAGE LA LIGNE OU Y A L EXCEPTION
package org.eclipse.test;

public class Main {

	public static void main(String[] args) {
		int x = 7, y = 0;
		try {
			System.out.println(x / y);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		System.out.println("fin")  
	}
}
                         
EXCEPTION METTRE EXCEPTION MATH EN PREMIER

int x = 7, y = 0;
		try {
			System.out.println(x / y);
		} catch (ArithmeticException e) {
			System.out.println("catch 1");
		} catch (Exception e) {
			System.out.println("catch 2");
		}
		
		System.out.println("fin");
 CONSOLE AFFICHE catch 1 et fin