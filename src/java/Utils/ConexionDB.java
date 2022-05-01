
package Utils;
import java.sql.*;

public class ConexionDB {

    public static Connection getConexion(){
        Connection con = null;
        String cadena = "jdbc:mysql://localhost/bddomiman?user=root&password=D3s44r0ll0";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(cadena);
            System.out.println("Conexion exitosa");
        } catch (Exception e) {
            System.out.println("Error:"+e);
        }
        return con;
    }
    public static void main(String[] args) {
       getConexion();
    }
    
}
