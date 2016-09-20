package busynesLogic.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

import com.sun.xml.internal.ws.policy.privateutil.PolicyUtils.Collections;

import busynesLogic.exceptions.ServiceException;

public class ServiceDAO {

	private Connection connection;
	private static ServiceDAO instance;
	private Map<String, Service> services = new HashMap<>();// key =
															// name+location
															// ->value service

	private ServiceDAO() {
	}

	public synchronized static ServiceDAO getInstance() {
		if (instance == null) {
			instance = new ServiceDAO();
		}
		return instance;
	}

	private void loadService() {
		this.connection = DBManager.getInstance().getConnection();
		try {

			Statement st = connection.createStatement();
			ResultSet resultSet = st.executeQuery("SELECT location, name, phone,user_email FROM services order by rating;");
			while (resultSet.next()) {
				services.put(resultSet.getString("name") + resultSet.getString("location"),
<<<<<<< HEAD
						new Service(
								resultSet.getString("name"), 
								resultSet.getString("user_email"),
								resultSet.getString("location"), 
								resultSet.getString("phone")));
=======
						new Service(resultSet.getString("name"), resultSet.getString("user_email"),
								resultSet.getString("location"), resultSet.getString("phone")));
>>>>>>> 8fda4d63bdc1e1b0a52e6a88c3cacf93a6739bd3
			}
			System.out.println("Service are loaded ! ");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public  Map<String, Service> getServices() {
		loadService();
		return services;
	}

	public void registerService(String name, String email, String phone, String location) throws ServiceException {
		loadService();
		if (!services.containsKey(name + location)) {
			insertService(name, email, phone, location);
		} else {
			throw new ServiceException("The service already exists !");
		}

	}
	public Service getService(String service){
		return services.get(service);
	}

	private void insertService(String name, String email, String phone, String location) {
		this.connection = DBManager.getInstance().getConnection();
		try {
			String sql = "Insert into services (location, name, phone,user_email) values (?,?,?,?) ;";
			PreparedStatement st = connection.prepareStatement(sql);
			st.setString(1, location);
			st.setString(2, name);
			st.setString(3, phone);
			st.setString(4, email);
			st.executeUpdate();
			Service service = new Service(name, email, location, phone);
			services.put(name + location, service);
			System.out.println("Service added  ! ");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
