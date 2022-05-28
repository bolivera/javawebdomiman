package Servlets;

import Beans.Productos;
import Utils.ConexionDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletsProductos extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            try {
                PreparedStatement sta = ConexionDB.getConexion().prepareStatement("select * from productos");
                ResultSet rs = sta.executeQuery();

                ArrayList<Productos> lista = new ArrayList<>();

                while (rs.next()) {
                    Productos c = new Productos(rs.getInt(1));
                    lista.add(c);
                }
                request.setAttribute("c_lista", lista);
                request.getRequestDispatcher("pages/todosProductos.jsp").forward(request, response);

            } catch (Exception e) {
                System.out.println("Error: " + e);
            }
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

        try {
            PreparedStatement sta = ConexionDB.getConexion().prepareStatement("select * from productos");
            ResultSet rs = sta.executeQuery();

            ArrayList<Productos> lista = new ArrayList<>();

            while (rs.next()) {
                Productos c = new Productos(rs.getInt(1));
                lista.add(c);
            }
            request.setAttribute("c_lista", lista);
            request.getRequestDispatcher("pages/todosProductos.jsp").forward(request, response);

        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
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
