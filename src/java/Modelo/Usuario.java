package Modelo;


public class Usuario {
      int    id;
    String nombre;
    String apellido;
    String tipo;
    String telefono;
    String email;
    
    
    
    public Usuario(){
          
    }
    
    public Usuario(int id, String nombre, String apellido, String tipo, String telefono, String email){
     
    this.id = id;
    this.nombre = nombre;
    this.apellido = apellido;
    this.tipo= tipo;
    this.telefono= telefono;
    this.email= email;
   
    
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    
}
