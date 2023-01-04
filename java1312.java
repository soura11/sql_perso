public List<User> findAll() throws ClassNotFoundException {
		Connection c = MyConnection.getConnection();
		List<User> users = new ArrayList<User>();
		try {

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
	
	
	public User findbyId(int id) throws ClassNotFoundException {
		Connection c = MyConnection.getConnection();
		try {
			String request = "SELECT * FROM user WHERE id = ? "; 
			
			PreparedStatement ps = c.prepareStatement(request);
			ps.setInt(1, id);
			
			ResultSet r = ps.executeQuery();
			
			if (r.next()) {
				User u = new User();
				
				u.setId(r.getInt("id"));
				u.setFirstName(r.getString("firstname"));
				u.setLastName(r.getString("lastname"));
				u.setSalary(r.getDouble("salary"));
				
				return u;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;

	}
	////
	 public User findbyFirstName(String firstname) throws ClassNotFoundException {
		Connection c = MyConnection.getConnection();
		try {
			String request = "SELECT * FROM user WHERE firstName = ? "; 
			
			PreparedStatement ps = c.prepareStatement(request);
			ps.setString(1, firstname);
			
			ResultSet r = ps.executeQuery();
			
			if (r.next()) {
				User u = new User();
				
				u.setId(r.getInt("id"));
				u.setFirstName(r.getString("firstname"));
				u.setLastName(r.getString("lastname"));
				u.setSalary(r.getDouble("salary"));
				
				return u;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;

	}