/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import context.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modol.Dormitories;
import modol.Payments;
import modol.Rooms;
import modol.Users;

/**
 *
 * @author ADMIN
 */
public class PaymentDAO extends DBContext {

    public ArrayList<Payments> getAllPayments() {
        ArrayList<Payments> payment = new ArrayList<>();
        try {
            String sql = "select * "
                    + " from Payments p , Rooms r , Users u "
                    + "where p.room_id = r.room_id and p.user_id = u.user_id";
            //Step2: create obj PrepareStatement
            PreparedStatement ps = connection.prepareStatement(sql);
            //Step 3: thuc thti truy van
            ResultSet rs = ps.executeQuery();
            //Step 4: xu ly kq tra  ve
            while (rs.next()) {
                //lay du lieu tu rs gan cho cac bien cuc bo
                Payments p = new Payments();
                p.setPayment_id(rs.getInt("payment_id"));

                Users u = new Users();
                u.setUser_id(rs.getInt("user_id"));
                u.setFull_name(rs.getString("full_name"));
                u.setUsername(rs.getString("username"));
                u.setPassword(rs.getString("password"));
                u.setRole_id(rs.getInt("role_id"));
                u.setGender(rs.getBoolean("gender"));
                u.setDob(rs.getDate("dob"));
                u.setPhone(rs.getString("phone"));
                p.setUsers(u);

                Rooms r = new Rooms();
                r.setRoom_id(rs.getInt("room_id"));
                r.setName(rs.getString("name"));
                r.setCurrent_people(rs.getInt("current_people"));
                r.setPrice(rs.getInt("price"));
                Dormitories d = new Dormitories();
                d.setDormitory_id(rs.getInt("dormitory_id"));
                d.setName(rs.getString("name"));
                r.setDormitories(d);
                r.setRoom_type(rs.getInt("room_type"));
                r.setFloor(rs.getInt("floor"));
                r.setStatus(rs.getString("status"));

                p.setRooms(r);
                p.setAmount(rs.getFloat("amount"));

                p.setPayment_date(rs.getDate("payment_date"));
                p.setStatus(rs.getString("status"));

                payment.add(p);
            }
        } catch (SQLException e) {
        }

        return payment;
    }

    public void insert(Payments payment) {
        PreparedStatement stm = null;
        try {
            String sql = "INSERT INTO Payments(user_id,room_id,amount,payment_date,Status) VALUES(?,?,?,?,?)";
            stm = connection.prepareStatement(sql);
            stm.setInt(1, payment.getUsers().getUser_id());
            stm.setInt(2, payment.getRooms().getRoom_id());
            stm.setFloat(3, payment.getAmount());
            stm.setDate(4, payment.getPayment_date());
            stm.setString(5, payment.getStatus());
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PaymentDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                stm.close();
            } catch (SQLException ex) {
                Logger.getLogger(PaymentDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            try {
                connection.close();
            } catch (SQLException ex) {
                Logger.getLogger(PaymentDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public void update(Payments payment) {
        PreparedStatement stm = null;
        try {
            String sql = "UPDATE [dbo].[Payments]\n"
                    + "   SET [user_id] = ?\n"
                    + "      ,[room_id] = ?\n"
                    + "      ,[amount] = ?\n"
                    + "      ,[payment_date] = ?\n"
                    + "      ,[status] = ?\n"
                    + " WHERE payment_id = ?";
            stm = connection.prepareStatement(sql);
            stm.setInt(1, payment.getUsers().getUser_id());
            stm.setInt(2, payment.getRooms().getRoom_id());
            stm.setFloat(3, payment.getAmount());
            stm.setDate(4, payment.getPayment_date());
            stm.setString(5, payment.getStatus());
            stm.setInt(6, payment.getPayment_id());
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PaymentDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                stm.close();
            } catch (SQLException ex) {
                Logger.getLogger(PaymentDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
            try {
                connection.close();
            } catch (SQLException ex) {
                Logger.getLogger(PaymentDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public void delete(String id) {
        PreparedStatement stm = null;
        try {
            String sql = "DELETE from Payments WHERE [payment_id] = ?";
            stm = connection.prepareStatement(sql);
            stm.setString(1, id);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(PaymentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Payments get(int id) {
        try {
            String sql = "SELECT *\n"
                    + "FROM Payments \n"
                    + "WHERE [payment_id] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Payments payment = new Payments();
                payment.setPayment_id(rs.getInt("payment_id"));
                Users u = new Users();
                u.setUser_id(rs.getInt("user_id"));
                payment.setUsers(u);
                Rooms r = new Rooms();
                r.setRoom_id(rs.getInt("room_id"));
                payment.setRooms(r);
                payment.setAmount(rs.getFloat("amount"));
                payment.setPayment_date(rs.getDate("payment_date"));
                payment.setStatus(rs.getString("status"));
                return payment;
            }
        } catch (SQLException ex) {
            Logger.getLogger(PaymentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
