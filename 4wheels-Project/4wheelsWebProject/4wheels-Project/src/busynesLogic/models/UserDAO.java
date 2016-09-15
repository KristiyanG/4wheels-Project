package busynesLogic.models;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import busynesLogic.exceptions.InvalidPasswordException;
import busynesLogic.exceptions.UserException;

public class UserDAO {

	private  Connection connection;
	private static UserDAO instance;
	private Map<String, User> users = new HashMap<>();
private UserDAO(){}
	
	public synchronized static UserDAO getInstance(){
		if(instance == null){
			instance = new UserDAO();
			
		}
		return instance;
	}

	private  Map<String, User> getAllUsers() throws InvalidPasswordException, UserException{
		Map<String, User> users = new HashMap<>();//email -> user

		try {
			this.connection=DBManager.getInstance().getConnection();
			Statement st = DBManager.getInstance().getConnection().createStatement();
			ResultSet resultSet = st.executeQuery("SELECT location, name, rating, email, user_password,phone FROM users;");
			while(resultSet.next()){
				users.put(resultSet.getString("email"),new User(	resultSet.getString("location"),
									resultSet.getString("name"),
									resultSet.getString("rating"),
									resultSet.getString("email"),
									resultSet.getString("user_password"),
									resultSet.getString("phone")
									));
			}
		} catch (SQLException e) {
			System.out.println("Oops, cannot make statement.");
			return users;
		}
		System.out.println("Users loaded successfully");
		return users;
	}
	

	public boolean insertUser(User user) throws InvalidPasswordException, UserException {
		if (user == null) {
			return false;
		}
		if(users.containsKey(user.getEmail())){
			return false;
		}
		users.put(user.getEmail(), user);
		
		return addInDB(user);
		
	}

	private boolean addInDB(User user) throws InvalidPasswordException, UserException {
		try {
			this.connection=DBManager.getInstance().getConnection();
			java.sql.Statement statement = connection.createStatement();
			
			ResultSet rs = statement.executeQuery(String.format(
					"select email from users where email = '%s'",
					user.getEmail()));
			
			if (!rs.next()) {
				int i = statement
						.executeUpdate(String
								.format("insert into users(name,location,user_password,email,phone) values('%s','%s','%s','%s','%s')",
										user.getName(), user.getLocation(),
										user.getPassword(), user.getEmail(),
										user.getPhone()));
				getAllUsers().put(user.getEmail(),user);
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
			displaySqlErrors(e);
			return false;
		}
	}

	public String registerUser(String name, String password, String password2,
			String phone, String email, String location) {
		User user = null;
		try {
			try {
				user = new User(name, password, password2, phone, email,
						location);
			} catch (UserException e) {
				System.out.println(e.getMessage());
			}
		} catch (InvalidPasswordException e) {

			return e.getMessage();
		}
		try {
			insertUser(user);
		} catch (InvalidPasswordException | UserException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "Wellcome " + name + "!";
	}

	public User getUser(String email,String password) {
		User u = users.get(email);
		if(u!=null){
			return u;
		}
		return searchInDB(email, password);
		

	}

	private User searchInDB(String email, String password) {
		ResultSet rs = null;
		java.sql.Statement statement=null;
		try {

			this.connection=DBManager.getInstance().getConnection();
			statement = connection.createStatement();
			rs = statement.executeQuery(String.format("select * from users where email = '%s' and user_password = '%s'",email,password));
			
			if (!rs.next()) {
				System.out.println("The user do not exist");
			return null;
			}
			
		    
//			location,name,rating ,email,user_password,phone
				 String name = rs.getString("name");
				 String location = rs.getString("location");
				 String email1 = rs.getString("email");
				 String password1 = rs.getString("user_password");
				 String phone = rs.getString("phone");
				 System.out.println(rs.toString());
				 User user = new User(name,phone,password1,email1,location);
				 
				 return user;
				
			
			
			
		} catch (SQLException e) {
		displaySqlErrors(e);
			return null;
		}
		finally{
			try {
				if(rs!=null)
				rs.close();
				if(statement!=null)
				statement.close();
				if(connection!=null)
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	}

	public boolean validateUser(String email, String password) {

		if(users.containsKey(email)){
			User u = users.get(email);
			if(u.getPassword().equals(password)){
				return true;
			}
			else{
				return false;
			}
		}
		return validateUserInDB(email, password);
	}

	private boolean validateUserInDB(String email, String password) {
		this.connection=DBManager.getInstance().getConnection();
	
		try {
			String insertSQL = "select * from users where email = ?"; 
			 PreparedStatement stmt =
					 connection.prepareStatement(insertSQL);
				stmt.setString(1, email);
				stmt.executeUpdate();
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
		System.out.println("===");
		System.out.println("SQLException: " + e.getMessage());
		System.out.println("SQLState: " + e.getSQLState());
		System.out.println("Vendor error: " + e.getErrorCode());

	}
}