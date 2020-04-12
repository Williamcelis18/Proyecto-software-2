package Controlador;

import Modelo.Invitado;
import Modelo.InvitadoDAO;
import Modelo.Usuario;
import Modelo.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Controlador extends HttpServlet {
    Usuario us=new Usuario();
    UsuarioDAO usao=new UsuarioDAO();
    Invitado in=new Invitado();
    InvitadoDAO indao=new InvitadoDAO();
    int ide;
  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String menu=request.getParameter("menu");
        String accion=request.getParameter("accion");

        if(menu.equals("Principal")){
            
         request.getRequestDispatcher("Principal.jsp").forward(request, response);
         
        }
        
        if(menu.equals("Inicio")){
            
         request.getRequestDispatcher("nuevo.jsp").forward(request, response);
         
        }
        if(menu.equals("ListarUsuarios")){
            
         switch (accion){
               case "Listar":
                    List lista=usao.listar();
                    request.setAttribute("usuarios", lista);
                   break;
                   
          default:
                   throw new AssertionError();
           }
        
         request.getRequestDispatcher("ListaUsuarios.jsp").forward(request, response);
        }
        if(accion.equals("Atras")){
        
            
              request.getRequestDispatcher("Principal.jsp").forward(request, response);
               
        }
         
        if(menu.equals("Usuarios")){
         
           switch (accion){
               case "Listar":
                    List lista=usao.listar();
                    request.setAttribute("usuarios", lista);
                   break;
               case "Agregar":
                    int id=Integer.parseInt(request.getParameter("txtId"));
                    String nombre=request.getParameter("txtNombre");
                    String apellido=request.getParameter("txtApellido");
                    String tipo=request.getParameter("txtTipo");
                    String telefono=request.getParameter("txtTelefono");
                    String email=request.getParameter("txtEmail");
                    us.setId(id);
                    us.setNombre(nombre);
                    us.setApellido(apellido);
                    us.setTipo(tipo);
                    us.setTelefono(telefono);
                    us.setEmail(email);
                    usao.agregar(us);
                    request.getRequestDispatcher("Controlador?menu=Usuarios&accion=Listar").forward(request, response);
                   break;
               case "Editar":
                    ide=Integer.parseInt(request.getParameter("id"));
                    Usuario u=usao.listarId(ide);
                    request.setAttribute("usuario", u);
                        request.getRequestDispatcher("Controlador?menu=Usuarios&accion=Listar").forward(request, response);
                    break;
                    
               case "Actualizar":
                   int id1=Integer.parseInt(request.getParameter("txtId"));
                    String nombre1=request.getParameter("txtNombre");
                    String apellido1=request.getParameter("txtApellido");
                    String tipo1=request.getParameter("txtTipo");
                    String telefono1=request.getParameter("txtTelefono");
                    String email1=request.getParameter("txtEmail");
                    us.setId(id1);
                    us.setNombre(nombre1);
                    us.setApellido(apellido1);
                    us.setTipo(tipo1);
                    us.setTelefono(telefono1);
                    us.setEmail(email1);
                    us.setId(ide);
                    usao.agregar(us);
                    usao.actualizar(us);
                    request.getRequestDispatcher("Controlador?menu=Usuarios&accion=Listar").forward(request, response);
                   
                   break;
               case "Eliminar":
                   ide=Integer.parseInt(request.getParameter("id"));
                   usao.eliminar(ide);
                   request.getRequestDispatcher("Controlador?menu=Usuarios&accion=Listar").forward(request, response);
                   break;
               
               default:
                   throw new AssertionError();
           }
            request.getRequestDispatcher("Usuarios.jsp").forward(request, response);
        }
        if(menu.equals("ListarInvitados")){
            
         switch (accion){
               case "Listar":
                    List lista=indao.listar();
                    request.setAttribute("invitados", lista);
                   break;
                   
          default:
                   throw new AssertionError();
           }
        
         request.getRequestDispatcher("ListaInvitados.jsp").forward(request, response);
        }
    
        if(menu.equals("Invitados")){
           switch (accion){
               case "Listar":
                    List lista=indao.listar();
                    request.setAttribute("invitados", lista);
                   break;
               case "Agregar":
                    int id=Integer.parseInt(request.getParameter("txtId"));
                    String nombre=request.getParameter("txtNombre");
                    String apellido=request.getParameter("txtApellido");
                    int id_inmueble=Integer.parseInt(request.getParameter("txtInmueble"));
                    
                    in.setId(id);
                    in.setNombre(nombre);
                    in.setApellido(apellido);
                    in.setId_inmueble(id_inmueble);
                    
                    indao.agregar(in);
                    request.getRequestDispatcher("Controlador?menu=Invitados&accion=Listar").forward(request, response);
                   break;
               case "Editar":
                    ide=Integer.parseInt(request.getParameter("id"));
                    Invitado i=indao.listarId(ide);
                    request.setAttribute("invitado", i);
                    request.getRequestDispatcher("Controlador?menu=Invitados&accion=Listar").forward(request, response);
                    break;
                    
               case "Actualizar":
                   int id2=Integer.parseInt(request.getParameter("txtId"));
                    String nombre2=request.getParameter("txtNombre");
                    String apellido2=request.getParameter("txtApellido");
                    int id_inmueble2=Integer.parseInt(request.getParameter("txtInmueble"));
                    
                    in.setId(id2);
                    in.setNombre(nombre2);
                    in.setApellido(apellido2);
                    in.setId_inmueble(id_inmueble2);
                    in.setId(ide);
                    indao.agregar(in);
                    indao.actualizar(in);
                    request.getRequestDispatcher("Controlador?menu=Invitados&accion=Listar").forward(request, response);
                   
                   break;
               case "Eliminar":
                   ide=Integer.parseInt(request.getParameter("id"));
                   indao.eliminar(ide);
                   request.getRequestDispatcher("Controlador?menu=Invitados&accion=Listar").forward(request, response);
                   break;
               default:
                   throw new AssertionError();
           } 
            request.getRequestDispatcher("Invitados.jsp").forward(request, response);
        }
       
    
        if(menu.equals("Inmuebles")){
           request.getRequestDispatcher("Inmuebles.jsp").forward(request, response);
        }
    }
        

    
    

    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
 
}