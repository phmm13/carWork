/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Marca;
import model.Modelo;

/**
 *
 * @author pedro
 */
public class GerenciarModelo extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet GerenciarModelo</title>");            
            out.println("</head>");
            out.println("<body>");
            try{
                String op = request.getParameter("op");
                switch(op){
                    case "inserir":{
                        Modelo mo = new Modelo();
                        mo.setNome_modelo(request.getParameter("nome"));
                        Marca ma = new Marca();
                        ma.setId_marca(Integer.parseInt(request.getParameter("marca")));
                        mo.setMarca(ma);
                        mo.inserir();
                        response.sendRedirect("index.jsp");
                        break;
                    }
                    case "alterar":{
                        Modelo mo = new Modelo();
                        mo.setId_modelo(Integer.parseInt(request.getParameter("id")));
                        mo.setNome_modelo(request.getParameter("nome"));
                        Marca ma = new Marca();
                        ma.setId_marca(Integer.parseInt(request.getParameter("marca")));
                        mo.setMarca(ma);
                        mo.alterar();
                        response.sendRedirect("index.jsp");
                        break;
                    }
                    case "excluir":{
                        Modelo mo = new Modelo();
                        mo.setId_modelo(Integer.parseInt(request.getParameter("id")));
                        mo.excluir();
                        response.sendRedirect("index.jsp");
                        break;
                    }
                }
            }catch (Exception e){
                System.out.println("Erro : "+e);
            }
            out.println("</body>");
            out.println("</html>");
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
