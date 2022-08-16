package com.example.examcrud;

import com.example.examcrud.MySQLConnection;
import java.sql.*;
import java.sql.Connection;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DaoPersona {
    Connection conn;
    PreparedStatement pstm;
    CallableStatement cstm;
    ResultSet rs;

    public List<BeanPersona> findAll() {
        List<BeanPersona> personas = new LinkedList<>();
        BeanPersona persona;
        try{
            conn = new MySQLConnection().getConnection();
            String query = "SELECT * FROM personas;";
            pstm = conn.prepareStatement(query);
            rs = pstm.executeQuery();
            while (rs.next()) {
                persona = new BeanPersona();
                persona.setId(rs.getInt("id"));
                persona.setNombre(rs.getString("nombre"));
                persona.setSurname(rs.getString("subname"));
                persona.setCurp(rs.getString("curp"));
                persona.setBirthday(rs.getString("cumple"));
                personas.add(persona);
            }
        }catch (SQLException e) {
            Logger.getLogger(DaoPersona.class.getName())
                    .log(Level.SEVERE, "Error findAll", e);
        } finally {
            closeConnections();
        }
        return personas;
    }

    public boolean save(BeanPersona persona) {
        try {
            conn = new MySQLConnection().getConnection();
            String query = "INSERT INTO personas" +
                    "(nombre, surname, curp, birthday)" +
                    " VALUES (?,?,?,?,1)";
            pstm = conn.prepareStatement(query);
            pstm.setString(1, persona.getNombre());
            pstm.setString(2, persona.getSurname());
            pstm.setString(3, persona.getCurp());
            pstm.setString(4, persona.getBirthday());
            return pstm.executeUpdate() == 1;
        } catch (SQLException e) {
            Logger.getLogger(DaoPersona.class.getName())
                    .log(Level.SEVERE, "Error save", e);
            return false;
        } finally {
            closeConnections();
        }
    }

    public BeanPersona findOne(Long id) {
        try {
            conn = new MySQLConnection().getConnection();
            String query = "SELECT * FROM personas WHERE id = ?";
            pstm = conn.prepareStatement(query);
            pstm.setLong(1, id);
            rs = pstm.executeQuery();
            if (rs.next()) {
                BeanPersona persona = new BeanPersona();
                persona.setId(rs.getLong("id"));
                persona.setNombre(rs.getString("nombre"));
                persona.setSurname(rs.getString("surname"));
                persona.setCurp(rs.getString("curp"));
                persona.setBirthday(rs.getString("birthday"));
                return persona;
            }
        } catch (SQLException e) {
            Logger.getLogger(DaoPersona.class.getName())
                    .log(Level.SEVERE, "Error findOne", e);
        } finally {
            closeConnections();
        }
        return null;
    }

    public boolean update(BeanPersona persona) {
        try {
            conn = new MySQLConnection().getConnection();
            String query = "UPDATE personas SET nombre = ?, surname = ?, curp = ?," +
                    "birthday = ? WHERE id = ?";
            pstm = conn.prepareStatement(query);
            pstm.setString(1, persona.getNombre());
            pstm.setString(2, persona.getSurname());
            pstm.setString(3, persona.getCurp());
            pstm.setString(4, persona.getBirthday());
            pstm.setLong(5, persona.getId());
            return pstm.executeUpdate() == 1;
        } catch (SQLException e) {
            Logger.getLogger(DaoPersona.class.getName())
                    .log(Level.SEVERE, "Error update", e);
            return false;
        } finally {
            closeConnections();
        }
    }

    public boolean delete(Long id) {
        try {
            conn = new MySQLConnection().getConnection();
            String query = "DELETE FROM personas WHERE id = ?";
            pstm = conn.prepareStatement(query);
            pstm.setLong(1, id);
            return pstm.executeUpdate() == 1;
        } catch (SQLException e) {
            Logger.getLogger(DaoPersona.class.getName())
                    .log(Level.SEVERE, "Error delete method");
            return false;
        } finally {
            closeConnections();
        }
    }

    public void closeConnections() {
        try {
            if (conn != null) {
                conn.close();
            }
            if (pstm != null) {
                pstm.close();
            }
            if (cstm != null) {
                cstm.close();
            }
            if (rs != null) {
                rs.close();
            }
        } catch (SQLException e) {
        }
    }

}

//3C Yocelin Reyes López