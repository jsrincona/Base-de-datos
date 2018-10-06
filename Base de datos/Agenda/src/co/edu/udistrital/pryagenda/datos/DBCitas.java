package co.edu.udistrital.pryagenda.datos;

import java.sql.*;
import co.edu.udistrital.pryagenda.logica.*;

public class DBCitas {

    DBConexion cn;

    public DBCitas() {
        cn = new DBConexion();
    }

    public Cita[] getCitas() {
        int registros = 0;
        try {
            PreparedStatement pstm = cn.getConexion().prepareStatement("SELECT count(1) as cont"
                    + " FROM citas ");
            ResultSet res = pstm.executeQuery();
            res.next();
            registros = res.getInt("cont");
            res.close();
        } catch (SQLException e) {
            System.out.println(e);
        }
        Cita[] data = new Cita[registros];
        try {
            PreparedStatement pstm = cn.getConexion().prepareStatement("SELECT con_fecha, "
                    + " con_hora, "
                    + " con_lugar, "
                    + " con_personas, "
                    + " con_desc,"
                    + " FROM citas "
                    + " ORDER BY con_fecha ");

            ResultSet res = pstm.executeQuery();
            int i = 0;
            while (res.next()) {
                data[i] = new Cita();
               
                data[i].setFecha(res.getString("con_fecha"));
                data[i].setHora(res.getString("con_hora"));
                data[i].setLugar(res.getString("con_lugar"));
                data[i].setPersonas(res.getString("con_personas"));
                data[i].setDesc(res.getString("con_desc"));
                i++;
            }
            res.close();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return data;
    }

    public int insertarCita(Cita c) {
        int cont_usuario = -1;
        int resultado = 0;//no hubo errores de validacion
        try {
            PreparedStatement pstm = cn.getConexion().prepareStatement("select count(1) as cont "
                    + " from citas "
                    + " where con_fecha = ? ");
            pstm.setString(1, c.getFecha());
            ResultSet res = pstm.executeQuery();
            res.next();
            cont_usuario = res.getInt("cont");
            res.close();

            if (cont_usuario == 0) {
                pstm = cn.getConexion().prepareStatement("insert into contactos (con_fecha, "
                        + " con_hora,"
                        + " con_lugar,"
                        + " con_personas,"
                        + " con_desc,"                    
                        + " values(?,?,?,?,?)");
                pstm.setString(1, c.getFecha());
                pstm.setString(2, c.getHora());
                pstm.setString(3, c.getLugar());
                pstm.setString(4, c.getPersonas());
                pstm.setString(5, c.getDesc());
  
                pstm.executeUpdate();

                pstm = cn.getConexion().prepareStatement("select last_insert_fecha()");
                res = pstm.executeQuery();
                res.next();
                resultado = res.getInt(1);
                res.close();
            } else {
                resultado = -2;//el login ya existe
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return resultado;
    }

    public int actualizarCita(Cita c) {
        int resultado = 0;
        try {
            PreparedStatement pstm = cn.getConexion().prepareStatement("update citas "
                    + " set con_hora = ?, "               
                    + " con_lugar = ?,"
                    + " con_personas = ?,"
                    + " con_desc = ?,"                
                    + " where con_fecha = ?");
            pstm.setString(1, c.getFecha());
            pstm.setString(2, c.getHora());
            pstm.setString(3, c.getLugar());
            pstm.setString(4, c.getPersonas());
            pstm.setString(5, c.getDesc());
            resultado = pstm.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return resultado;
    }

    public int borrarCita(Cita c) {
        int resultado = 0;
        try {
            PreparedStatement pstm = cn.getConexion().prepareStatement("delete from citas "
                    + " where con_fecha = ?");
            pstm.setString(1, c.getFecha());
            resultado = pstm.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return resultado;
    }
}
