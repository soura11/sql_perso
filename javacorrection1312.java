// Exercice
		
		// Ecrire un programme qui demande a l'utilisateur de rentrer une valeur pour
		// Recupere un element selon son identifiant, puis qui supprime un element selon son identifiant

public interface IDao<T> {

	List<T> findAll() throws ClassNotFoundException;
	
	T save(T o) throws ClassNotFoundException;
	
	T update(T o) throws ClassNotFoundException;
	
	T findById(int id) throws ClassNotFoundException;
	
	boolean remove(int id)throws ClassNotFoundException;	
}

///////////////////////////////////////

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.example.dao.IDao;
import com.example.models.User;
import com.example.utils.MyConnection;

public class UserDaoImpl implements IDao<User> {

	// Ici, on retoune une collection de type User de lq db
	public List<User> findAll() throws ClassNotFoundException {
		List<User> users = new ArrayList<User>();
		Connection c = null;
		try{
			c = MyConnection.getConnection();
			// Preparation de la requete
			String request = "SELECT * FROM user";
			// creation de la requete (PreparedStatement =>
			// contre les injections SQL)
			PreparedStatement ps = c.prepareStatement(request);
			// Execution de la requete
			ResultSet r = ps.executeQuery();
			// Recuperation des donnees
			while (r.next()) {
				User u = new User();
				// on indique chaque fois le nom de la colonne et le type
				u.setId(r.getInt("id"));
				u.setFirstName(r.getString("firstname"));
				u.setLastName(r.getString("lastname"));
				u.setSalary(r.getDouble("salary"));

				users.add(u);
			}
			return users;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public User save(User o) throws ClassNotFoundException {
		Connection c = null;
		try{
			c = MyConnection.getConnection();
			// Preparation de la requete
			String request = "INSERT INTO user (firstname, lastname, salary) VALUES (?,?,?)";
			// creation de la requete (PreparedStatement => contre les injections SQL)
			PreparedStatement ps = c.prepareStatement(request, PreparedStatement.RETURN_GENERATED_KEYS);

			ps.setString(1, o.getFirstName());
			ps.setString(2, o.getLastName());
			ps.setDouble(3, o.getSalary());

			// Execution de la requete
			ps.executeUpdate();

			ResultSet resultat = ps.getGeneratedKeys();
			if (resultat.next()) {
				o.setId(resultat.getInt(1));
				return o;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public User update(User o) throws ClassNotFoundException {
		Connection c = null;
		try{
			c = MyConnection.getConnection();

			String request = "UPDATE user SET firstname = ?, lastname = ?, salary = ? WHERE id = ?";

			PreparedStatement ps = c.prepareStatement(request);
			ps.setString(1, o.getFirstName());
			ps.setString(2, o.getLastName());
			ps.setDouble(3, o.getSalary());
			ps.setInt(4, o.getId());

			int count = ps.executeUpdate();
			if (count == 1) {
				System.out.println("Updated queries: " + count);
				return o;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public User findById(int id) throws ClassNotFoundException {
		Connection c = null;
		try{
			c = MyConnection.getConnection();
			// Preparation de la requete
			String request = "SELECT * FROM user WHERE id = ?;";
			// creation de la requete (PreparedStatement => contre les injections SQL)
			PreparedStatement ps = c.prepareStatement(request);
			
			ps.setInt(1, id);
			// Execution de la requete
			ResultSet r = ps.executeQuery();
			
			// Recuperation des donnees
			if (r.next()) {			
				return new User(id, r.getString("firstname"), r.getString("lastname"), r.getDouble("salary"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public boolean remove(int id) throws ClassNotFoundException {
		Connection c = null;
		try{
			c = MyConnection.getConnection();
			// Preparation de la requete
			String request = "DELETE FROM user WHERE id = ?";
			// creation de la requete (PreparedStatement => contre les injections SQL)
			PreparedStatement ps = c.prepareStatement(request);
			ps.setInt(1, id);
			int rows = ps.executeUpdate();
			if (rows == 1) {
				System.out.println("Le tuple a bien été supprimé!");
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		return false;
	}

}

//////////////////////////////////////////////////

// Exercice
		
		// Ecrire un programme qui demande a l'utilisateur de rentrer une valeur pour
		// Recupere un element selon son identifiant, puis qui supprime un element selon son identifiant
		
		System.out.println("------------------Afficher la liste des users---------------------------------");
	
		userDaoImpl.findAll().forEach((p) -> System.out.println(p));

		Scanner sc = new Scanner(System.in);
		
		System.out.println("------------------Inserer une nouveau user---------------------");

		System.out.println("Veuillez rentrer un nom, svp");
		String firstname = sc.next();

		System.out.println("Veuillez rentrer un prenom, svp");
		String lastname = sc.next();

		System.out.println("Veuillez rentrer un salaire, svp");
		Double salary = sc.nextDouble();

		User userSaved = userDaoImpl.save(new User(firstname, lastname, salary));

		if (userSaved != null) {
			System.out.println("Utilisateur inserée : " + userSaved + "Avec succes");
		} else {
			System.out.println("probleme rencontré");
		}

		System.out.println("------------------Afficher la liste des Users---------------------------------");

		userDaoImpl.findAll().forEach((p) -> System.out.println(p));

		System.out.println("------------------Trouver un user selon son identifiant---------------------");

		System.out.println("Veuillez rentrer un identifiant, svp");
		int id = sc.nextInt();

		User userFindById = userDaoImpl.findById(id);

		if (userFindById != null) {
			System.out.println("user numero " + userFindById.getId() + " a ete trouve");
		} else {
			System.out.println("probleme rencontré");
		}

		System.out.println("------------------Supprimer un user selon son identifiant---------------------");

		System.out.println("Veuillez rentrez un identifiant, svp");
		int i = sc.nextInt();

		boolean test = userDaoImpl.remove(i);
		
		if (test == true) {
			System.out.println("user numero avec " + i + " a ete trouve");
		} else {
			System.out.println("probleme rencontré");
		}
		
		System.out.println("------------------Modifier un user selon son identifiant---------------------");

		System.out.println("Veuillez rentrer un nom, svp");
		String firstname2 = sc.next();

		System.out.println("Veuillez rentrer un prenom, svp");
		String lastname2 = sc.next();

		System.out.println("Veuillez rentrer un salaire, svp");
		Double salary2 = sc.nextDouble();
		
		System.out.println("Veuillez rentrez un identifiant, svp");
		int ide = sc.nextInt();
		
		User u = new User(ide, firstname2, lastname2, salary2);

		User userToUpdate = userDaoImpl.update(u);
		
		if (userToUpdate != null) {
			System.out.println("personne numero " + userToUpdate.getId() + " a ete modifie");
		} else {
			System.out.println("probleme rencontré");
		}