package Modelo;

import Config.Conexion;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class InvitadoDAO {
     Conexion cn=new Conexion();
   Connection con;
   PreparedStatement ps;
   ResultSet rs;
   int r;
   
   public Invitado Validar(String nombre, int id){
   Invitado in=new Invitado();
   String sql="select * from invitados where nombre=? and id_invitado=?";
   try{
       con=cn.Conexion();
       ps=con.prepareStatement(sql);
       ps.setString(1,nombre);
       ps.setInt(2, id);
       rs=ps.executeQuery();
       
       while(rs.next()){
           
          in.setId(rs.getInt("id_invitado"));
          in.setNombre(rs.getString("nombre"));
          in.setApellido(rs.getString("apellido"));
          in.setId_inmueble(rs.getInt("id_inmueble"));
           
       }
       
      }catch(Exception e){out.print(e+"");
      }   
          return in;
    
    }
   
  //Operaciones CRUD
   
   public List listar(){
      String sql="select * from invitados";
      List<Invitado>lista= new ArrayList<>(); 
        try{
             con=cn.Conexion();
             ps=con.prepareStatement(sql);
             rs=ps.executeQuery();
             while (rs.next()){
                 Invitado in= new Invitado();
                 in.setId(rs.getInt(1));
                 in.setNombre(rs.getString(2));
                 in.setApellido(rs.getString(3));
                 in.setId_inmueble(rs.getInt(4));
                 lista.add(in);
             
               }
            }catch(Exception e){
            }
            
            return lista;
        }
        public int agregar(Invitado in){
            String sql="insert into invitados(id_invitado,nombre,apellido,id_inmueble)values(?,?,?,?)";
            try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            ps.setInt(1, in.getId());
            ps.setString(2, in.getNombre());
            ps.setString(3, in.getApellido());
            ps.setInt(4, in.getId_inmueble());
            ps.executeUpdate();
            }catch(Exception e){
            
            }
            return r;
        }
        public Invitado listarId(int id){
        Invitado inv =new Invitado();
        String sql="select * from invitados where id_invitado="+id;
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
             
            inv.setId(rs.getInt(1));
            inv.setNombre(rs.getString(2));
            inv.setApellido(rs.getString(3));
            inv.setId_inmueble(rs.getInt(4));
            }
        }catch(Exception e){
        }
        return inv;
        }
        public String actualizar(Invitado in){
        String sql="update invitados set nombre=?,apellido=?,id_inmueble=? where id_invitado=?";
            try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            
            ps.setInt(4, in.getId());
            ps.setString(1, in.getNombre());
            ps.setString(2, in.getApellido());
            ps.setInt(3, in.getId_inmueble());
            ps.executeUpdate();
            return "hola";
            }catch(Exception e){
           return e.toString();
            }
            
      }
        public void eliminar(int id){
            String sql="delete from invitados where id_invitado="+id;
            try{
                con=cn.Conexion();
                ps=con.prepareStatement(sql);
                ps.executeUpdate();
            }catch(Exception e){
            }
  }

}
