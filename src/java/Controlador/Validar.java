package Controlador;

import Modelo.Usuario;
import Modelo.UsuarioDAO;
import Controlador.Controlador;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.*;
import static java.lang.System.out;

public class Validar extends HttpServlet {

   UsuarioDAO usao=new UsuarioDAO();
   Usuario us =new Usuario();
   
   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion=request.getParameter("accion");
        if(accion.equalsIgnoreCase("Ingresar")){
        String user=request.getParameter("txtuser");
        int pass=Integer.parseInt(request.getParameter("txtpass"));
        us=usao.Validar(user, pass);
        if(us.getNombre()!=null){
           request.setAttribute("usuario",us);
           request.getRequestDispatcher("Controlador?menu=Principal").forward(request, response);
           request.getSession().invalidate();
        }else{
            request.setAttribute("usuario", null);
            response.sendRedirect("index.jsp");
            
            }
        }
        if(accion.equalsIgnoreCase("Atras")){
         request.setAttribute("usuario",us);
         request.getRequestDispatcher("Controlador?menu=Principal").forward(request, response);
         request.getSession().equals(us);
        }
        else{
          request.setAttribute("usuario", null); 
         response.sendRedirect("index.jsp");
         out.print("Error");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}