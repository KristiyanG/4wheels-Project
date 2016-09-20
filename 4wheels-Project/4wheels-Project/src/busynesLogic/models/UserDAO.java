package busynesLogic.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeSet;

import busynesLogic.exceptions.InvalidPasswordException;
import busynesLogic.exceptions.UserException;

public class UserDAO {

	private static final int NEW_USER_RATING = 0;
	private Connection connection;
	private static UserDAO instance;
	private Map<String, User> users = new HashMap<>();

	private UserDAO() {
	}

	public synchronized static UserDAO getInstance() {
		if (instance == null) {
			instance = new UserDAO();
		}
		return instance;
	}

	public void deleteUser(String email) {
		this.connection = DBManager.getInstance().getConnection();
		String sql = "Delete from users where email = ?;";
		try {
			String insertSQL = "delete  from users where email = ?";
			PreparedStatement stmt = connection.prepareStatement(insertSQL);
			stmt.setString(1, email);
			stmt.executeUpdate();
			users.remove(getUser(email));
			System.out.println("User was deleted ! ");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public TreeSet<User> sortedUser(String criteria) {
		TreeSet<User> sortedUsers=null;
		
		if(criteria.equals("rating")){
		sortedUsers = new TreeSet<User>((v1, v2) -> {
			if (v1.getRating() > v2.getRating()) {
				return -1;
			}
			if (v1.getRating() < v2.getRating()) {
				return 1;
			}
			return v1.getEmail().compareTo(v2.getEmail());
		});

		try {
			sortedUsers.addAll(getAllUsers().values());
		} catch (InvalidPasswordException | UserException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sortedUsers;
		}
		else {
			sortedUsers = new TreeSet<User>((v1, v2) ->{
				String user1 =v1.getName().toString();
				String user2 =v2.getName().toString();
				if((user1.compareTo(user2)==0)){
					return v1.getEmail().compareTo(v2.getEmail());
				}
				return user1.compareTo(user2);
			} );
			
			

			try {
				sortedUsers.addAll(getAllUsers().values());
			} catch (InvalidPasswordException | UserException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return sortedUsers;
		}
		
		
	}

	private Map<String, User> getAllUsers() throws InvalidPasswordException, UserException {
		this.users = new HashMap<>();// email -> user

		try {
			
			this.connection = DBManager.getInstance().getConnection();
			Statement st = DBManager.getInstance().getConnection().createStatement();
			ResultSet resultSet = st
					.executeQuery("SELECT location, name, rating, email, user_password, phone,picture FROM users;");
			while (resultSet.next()) {
				
				users.put(resultSet.getString("email"),
						new User(resultSet.getString("name"), resultSet.getString("phone"),
								resultSet.getString("user_password"), resultSet.getString("email"),
								resultSet.getString("location"), resultSet.getDouble("rating"),resultSet.getString("picture")));
				
			}
		} catch (SQLException e) {
			System.out.println("Oops, cannot make statement.");
			return users;
		}
	

		return users;
	}

	public boolean insertUser(User user, String pass) throws InvalidPasswordException, UserException {
		if (user == null) {
			return false;
		}
		if (users.containsKey(user.getEmail())) {
			
			return false;
		}
		users.put(user.getEmail(), user);

		return addInDB(user, pass);
	}

	private boolean addInDB(User user, String pass) throws InvalidPasswordException, UserException {
		try {
			this.connection = DBManager.getInstance().getConnection();
			PreparedStatement statement = connection.prepareStatement("SELECT email FROM users WHERE email = ?");
			statement.setString(1, user.getEmail());
			ResultSet rs = statement.executeQuery();

			if (!rs.next()) {
				String sql = "insert into users(name,location,user_password,email,phone,rating,picture) values(?,?,?,?,?,?,?);";
				PreparedStatement stm = connection.prepareStatement(sql);
				stm.setString(1, (String) user.getName());
				stm.setString(2, (String) user.getLocation());
				stm.setString(3, pass);
				stm.setString(4, (String) user.getEmail());
				stm.setString(5, (String) user.getPhone());
				stm.setDouble(6, NEW_USER_RATING);
				stm.setString(7, user.getProfilePic());
				stm.executeUpdate();
				getAllUsers().put(user.getEmail(), user);
				System.out.println("User rating " + user.getRating());
				rs.close();
				statement.close();
				connection.close();
				return true;
			}

			rs.close();
			statement.close();
			connection.close();
			return false;

		} catch (SQLException e) {
			System.out.println(e.getStackTrace());
			displaySqlErrors(e);
			return false;
		}
	}

	public User getUser(String email, String password) throws UserException {
		User u = this.users.get(email);
		if (u != null) {
			return u;
		}
		return searchInDB(email, password);
	}

	public User getUser(String email) {
		User currentUser = users.get(email);
		return currentUser;
	}

	private User searchInDB(String email, String password) throws UserException {
		ResultSet rs = null;
		PreparedStatement statement = null;
		try {

			this.connection = DBManager.getInstance().getConnection();
			 statement = connection.prepareStatement("select * from users where email = ? and user_password = ?");
			statement.setString(1, email);
			statement.setString(2, password);
			rs = statement.executeQuery();

			if (!rs.next()) {
				return null;
			}

			String name = rs.getString("name");
			String location = rs.getString("location");
			String email1 = rs.getString("email");
			String password1 = rs.getString("user_password");
			String phone = rs.getString("phone");
			String picture = rs.getString("picture");
			double rating = rs.getDouble("rating");
			User user = new User(name, phone, password1, email1, location,rating,picture);

			return user;

		} catch (SQLException e) {
			displaySqlErrors(e);
			return null;
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (statement != null)
					statement.close();
				if (connection != null)
					connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
	}

	// LOgin
	public boolean validateUser(String email, String password) {
		if (users.containsKey(email)) {
			User u = users.get(email);
			if (u.isValidPassword(password)) {
				return true;
			} else {
				return false;
			}
		}
		return validateUserInDB(email, password);
	}

	private boolean validateUserInDB(String email, String password) {
		this.connection = DBManager.getInstance().getConnection();

		try {
			String insertSQL = "select * from users where email = ?";
			PreparedStatement stmt = connection.prepareStatement(insertSQL);
			stmt.setString(1, email);
			ResultSet rs = stmt.executeQuery();
			if (!rs.next()) {
				return false;
			}

			String pass = rs.getString(4);
			if (pass.equals(password)) {
				return true;
			}

			return false;
		} catch (SQLException e) {
			displaySqlErrors(e);
		}
		return false;
	}

	private void displaySqlErrors(SQLException e) {
		System.out.println("SQLException: " + e.getMessage());
		System.out.println("SQLState: " + e.getSQLState());
		System.out.println("Vendor error: " + e.getErrorCode());
	}

	public boolean updateUser(String name, String newPass, String location, String email) {
		this.connection = DBManager.getInstance().getConnection();
		try {
			PreparedStatement stm = connection
					.prepareStatement("Update users Set user_password = ?,name=?,location =? where email=?;");
			stm.setString(1, newPass);
			stm.setString(2, name);
			stm.setString(3, location);
			stm.setString(4, email);
			stm.executeUpdate();
			try {
				getAllUsers();
			} catch (InvalidPasswordException e) {
				e.printStackTrace();
				return false;
			} catch (UserException e) {
				e.printStackTrace();
				return false;
			}
			System.out.println("User updated !");
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;

	}
	public void updateUserRating(String email,String rating){
		this.connection = DBManager.getInstance().getConnection();
		System.out.println("Rating" + rating);
		try {
			double convertRate=1;
			switch (rating) {
			case "1":convertRate=1;
				break;
			case "2":convertRate=2;
			break;
			
			case "3":convertRate=3;
			break;
			case "4":convertRate=4;
			break;
			case "5":convertRate=5;
			break;
				
			}
			PreparedStatement stm = connection
					.prepareStatement("Update users Set rating=? where email=?;");
			stm.setDouble(1, convertRate);
			stm.setString(2, email);
			stm.executeUpdate();
			try {
				getAllUsers();
			} catch (InvalidPasswordException e) {
				e.printStackTrace();
				return ;
			} catch (UserException e) {
				e.printStackTrace();
				return;
			}
			System.out.println("User updated !");
		} catch (SQLException e) {
			e.printStackTrace();
			
		}
		
	}
}
