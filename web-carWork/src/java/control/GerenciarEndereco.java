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
import model.Endereco;
import model.Oficina;

/**
 *
 * @author pedro
 */
public class GerenciarEndereco extends HttpServlet {

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
            out.println("<title>Servlet GerenciarEndereco</title>");
            out.println("</head>");
            out.println("<body>");
            try {
                String op = request.getParameter("op");
                switch (op) {
                    case "inserir": {
                        Endereco e = new Endereco();
                        e.setCep(request.getParameter("cep"));
                        e.setLogradouro(request.getParameter("logradouro"));
                        e.setBairro(request.getParameter("bairro"));
                        e.setComplemento(request.getParameter("complemento"));
                        e.setNumero(Integer.parseInt(request.getParameter("numero")));
                        Oficina o = new Oficina();
                        o.setId_oficina(Integer.parseInt(request.getParameter("oficina")));

                        e.setOficina(o);

                        e.inserir();
                        response.sendRedirect("index.jsp");
                        break;
                    }
                    case "alterar": {
                        Endereco e = new Endereco();
                        e.setId_endereco(Integer.parseInt(request.getParameter("id")));
                        e.setCep(request.getParameter("cep"));
                        e.setLogradouro(request.getParameter("logradouro"));
                        e.setBairro(request.getParameter("bairro"));
                        e.setComplemento(request.getParameter("complemento"));
                        e.setNumero(Integer.parseInt(request.getParameter("numero")));

                        Oficina o = new Oficina();
                        o.setId_oficina(Integer.parseInt(request.getParameter("oficina")));

                        e.setOficina(o);
                        e.alterar();
                        response.sendRedirect("index.jsp");
                        break;
                    }
                    case "excluir": {
                        Endereco e = new Endereco();
                        e.setId_endereco(Integer.parseInt(request.getParameter("id")));
                        e.excluir();
                        response.sendRedirect("index.jsp");
                        break;
                    }
                }
            } catch (Exception e) {
                System.out.println("Erro : " + e);
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
