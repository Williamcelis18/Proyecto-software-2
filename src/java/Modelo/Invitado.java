
package Modelo;


public class Invitado {
      int    id,id_inmueble;
    String nombre,apellido;
   
    public Invitado(){
          
    }
    
    public Invitado(int id, String nombre, String apellido, int id_inmueble){
     
    this.id = id;
    this.nombre = nombre;
    this.apellido = apellido;
    this.id_inmueble= id_inmueble;
   
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId_inmueble() {
        return id_inmueble;
    }

    public void setId_inmueble(int id_inmueble) {
        this.id_inmueble = id_inmueble;
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

      
}