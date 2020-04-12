package Config;

import java.sql.Connection;
import java.sql.DriverManager;


public class Conexion {
   Connection con;
   String url="jdbc:postgresql://localhost:5432/postgres";
   String user="postgres";
   String pass="felipe1";
   
 public Connection Conexion(){
     try{
         Class.forName("org.postgresql.Driver");
         con=DriverManager.getConnection(url,user,pass);
     }catch(Exception e){
     }
     return con;
 }
}
