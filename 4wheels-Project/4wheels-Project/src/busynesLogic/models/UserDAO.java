package busynesLogic.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;

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

	public void deleteUser(String email){
		this.connection=DBManager.getInstance().getConnection();
		String sql="Delete from users where email = '?';";
		try {
			String insertSQL = "delete  from users where email = ?"; 
			 PreparedStatement stmt =
					 connection.prepareStatement(insertSQL);
				stmt.setString(1, email);
				stmt.executeUpdate();
			users.remove(getUser(email));
			System.out.println("User was deleted ! ");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private  Map<String, User> getAllUsers() throws InvalidPasswordException, UserException{
		Map<String, User> users = new HashMap<>();//email -> user

		try {
			this.connection = DBManager.getInstance().getConnection();
			Statement st = DBManager.getInstance().getConnection().createStatement();
			ResultSet resultSet = st.executeQuery("SELECT location, name,rating, email, user_password, phone FROM users;");
			while(resultSet.next()){
				users.put(resultSet.getString("email"),new User(
									resultSet.getString("name"),
									resultSet.getString("phone"),
									resultSet.getString("user_password"),
									resultSet.getString("email"),
									resultSet.getString("location"),
									resultSet.getDouble("rating")
									));
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
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
			System.out.println("User alraady exists ");
			return false;
		}
		users.put(user.getEmail(), user);
		
		return addInDB(user);
	}

	private boolean addInDB(User user) throws InvalidPasswordException, UserException {
		try {
			this.connection = DBManager.getInstance().getConnection();
			Statement statement = connection.createStatement();
			
			ResultSet rs = statement.executeQuery(String.format(
					"SELECT email FROM users WHERE email = '%s'",
					user.getEmail()));
			System.out.println(user.getEmail());
			
			if (!rs.next()) {
				//TODO 
				int i = statement
						.executeUpdate(String
								.format("insert into users(name,location,user_password,email,phone) values('%s','%s','%s','%s','%s')",
										user.getName(), user.getLocation(),
										user.getPassword(), user.getEmail(),
										user.getPhone()));
				getAllUsers().put(user.getEmail(),user);
				System.out.println("Dovaven v db ");
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

	public User getUser(String email, String password) {
		User u = users.get(email);
		if(u!=null){
			return u;
		}
		return searchInDB(email, password);
	}

	public User getUser(String email){
		User currentUser = users.get(email);		
		return currentUser;
	}
	
	private User searchInDB(String email, String password) {
		ResultSet rs = null;
		java.sql.Statement statement=null;
		try {

			this.connection = DBManager.getInstance().getConnection();
			statement = connection.createStatement();
			rs = statement.executeQuery(String.format("select * from users where email = '%s' and user_password = '%s'",email,password));
			
			if (!rs.next()) {
				System.out.println("The user do not exist");
			return null;
			}
			
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
//LOgin
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

	public boolean updateUser(String name, String newPass, String location,String email) {
		this.connection=DBManager.getInstance().getConnection();
		try {
			PreparedStatement stm =connection.prepareStatement("Update users Set user_password = ?,name=?,location =? where email=?;");
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
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		return true;
		
	}
}
