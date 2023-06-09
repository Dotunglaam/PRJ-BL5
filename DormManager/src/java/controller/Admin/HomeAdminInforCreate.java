/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller.Admin;

import dal.InforDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Date;
import modol.Informations;
import modol.Payments;
import modol.Rooms;
import modol.Users;

/**
 *
 * @author ADMIN
 */
public class HomeAdminInforCreate extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet HomeAdminInforCreate</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet HomeAdminInforCreate at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        request.getRequestDispatcher("view/homeAInforCreate.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        String u_name = request.getParameter("id");
        String r_name = request.getParameter("r_id");
        String p_id = request.getParameter("p_id");
        String rrd = request.getParameter("rrd");
        String cd = request.getParameter("cd");
        
        InforDAO i = new InforDAO();
        Informations in = new Informations();
        
        Users u = new Users();
        u.setUser_id(Integer.parseInt(u_name));
        in.setUsers(u);
        Rooms r = new Rooms();
        r.setRoom_id(Integer.parseInt(r_name));
        in.setRooms(r);
        Payments p = new Payments();
        p.setPayment_id(Integer.parseInt(p_id));
        in.setPayments(p);
        in.setRoom_registration_date(Date.valueOf(rrd));
        in.setCancellation_date(Date.valueOf(cd));
        i.insert(in);
        response.sendRedirect("homea");
        
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
