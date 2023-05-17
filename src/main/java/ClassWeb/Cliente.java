package ClassWeb;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Alan Atilio
 */
public class Cliente {

    private String Nombre;
    private String Apellido;
    private String Correo;
    private String Telefono;

    public Cliente() {
    }

    public Cliente(String n,String a, String c, String t) {
        this.Nombre = n;
        this.Apellido = a;
        this.Correo = c;
        this.Telefono = t;
    }

    public String getNombre() {
        return Nombre;
    }

    public String getApellido() {
        return Apellido;
    }

    public String getCorreo() {
        return Correo;
    }

    public String getTelefono() {
        return Telefono;
    }
    
    

}
