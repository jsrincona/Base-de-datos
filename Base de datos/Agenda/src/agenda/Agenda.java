/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package agenda;

import co.edu.udistrital.pryagenda.datos.DBCitas;
import co.edu.udistrital.pryagenda.datos.DBContactos;
import co.edu.udistrital.pryagenda.logica.Cita;
import co.edu.udistrital.pryagenda.logica.Contacto;

/**
 *
 * @author Estudiantes
 */
public class Agenda {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        DBContactos dbcontactos = new DBContactos();    //para llamar contactos//
      Contacto[] contactos = dbcontactos.getContactos();
        for (Contacto contacto : contactos) {
            System.out.println(contacto.getId() + "||" + contacto.getNombre() + "||" + contacto.getApellido() + "||" + contacto.getTelefonoDomicilio()+ "||" + contacto.getTelefonoOficina() + "||" + contacto.getCelular()+ "||" + contacto.getCorreo()+ "||" + contacto.getDireccionResidencia()+ "||" + contacto.getDireccionTrabajo());
        }
        DBCitas dbcitas = new DBCitas();       //para que salgan las citas//
        Cita[] citas = dbcitas.getCitas();
        for (Cita cita : citas) {
            System.out.println(cita.getFecha() +"||" + cita.getHora() + "||" + cita.getLugar() + "||" + cita.getPersonas() + "||" + cita.getDesc());
        }
    }
    
    
}

