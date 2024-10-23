package conexion;

import java.sql.Connection;
import java.sql.SQLException;
import javax.sql.DataSource;
import org.apache.commons.dbcp2.BasicDataSource;

public class ConexionBD {

	private static BasicDataSource dataSource = null;

	private static void initializeDataSource() {
		dataSource = new BasicDataSource();
		dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
		dataSource.setUsername("root");
		dataSource.setPassword("123456");
		dataSource.setUrl("jdbc:mysql://localhost:3306/gestion_de_nominas");
		dataSource.setInitialSize(20);
		dataSource.setMaxIdle(15);
		dataSource.setMaxTotal(20);
		dataSource.setMaxWaitMillis(5000);
	}

	private static DataSource getDataSource() {
		if (dataSource == null) {
			initializeDataSource();
		}
		return dataSource;
	}

	public static Connection getConnection() throws SQLException {
		return getDataSource().getConnection();
	}

}
