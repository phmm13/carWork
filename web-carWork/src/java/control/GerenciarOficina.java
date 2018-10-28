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
import javax.servlet.http.HttpSession;
import model.Oficina;
import model.TipoOficina;

/**
 *
 * @author pedro
 */
public class GerenciarOficina extends HttpServlet {

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
            out.println("<title>Servlet GerenciarOficina</title>");            
            out.println("</head>");
            out.println("<body>");
            try{
                HttpSession session = request.getSession(); // pega a sessao e instancia
                String op = request.getParameter("op");
                switch(op){
                    case "inserir":{
                        Oficina of = new Oficina();
                        of.setNome_oficina(request.getParameter("nome"));
                        of.setTelefone_oficina(request.getParameter("telefone"));
                        TipoOficina to = new TipoOficina();
                        to.setId_tipo_oficina(Integer.parseInt(request.getParameter("tipoOficina")));
                        of.setTipoOfcina(to);
                        of.inserir();
                        response.sendRedirect("index.jsp");
                        break;
                    }
                    case "alterar":{
                        Oficina of = new Oficina();
                        of.setId_oficina(Integer.parseInt(request.getParameter("id")));
                        of.setNome_oficina(request.getParameter("nome"));
                        of.setTelefone_oficina(request.getParameter("telefone"));
                        TipoOficina to = new TipoOficina();
                        to.setId_tipo_oficina(Integer.parseInt(request.getParameter("tipoOficina")));
                        of.setTipoOfcina(to);
                        of.alterar();
                        response.sendRedirect("index.jsp");
                        break;
                    }
                    case "excluir":{
                        Oficina of = new Oficina();
                        of.setId_oficina(Integer.parseInt(request.getParameter("id")));
                        of.excluir();
                        response.sendRedirect("index.jsp");
                        break;
                    }
                    case "login":{
                        String usuario = request.getParameter("login");
                        String senha = request.getParameter("senha");
                        Oficina of = new Oficina();
                        of = of.login(usuario, senha);
                        if(of == null){
                            response.sendRedirect("login.jsp");
                        }else{
                            session.setAttribute("oficina", of);
                            response.sendRedirect("indexOficina.jsp");
                        }
                        break;
                    }
                    case "cadastrar":{
                        Oficina of = new Oficina();
                        
                        TipoOficina to = new TipoOficina();
                        to.setId_tipo_oficina(Integer.parseInt(request.getParameter("tipoOficina")));
                        of.setTipoOfcina(to);
                        
                        of.setNome_oficina(request.getParameter("nome"));
                        of.setTelefone_oficina(request.getParameter("telefone"));
                        of.setCnpj_oficina(request.getParameter("cnpj"));
                        of.setEml_oficina(request.getParameter("email"));
                        of.setUsr_oficina(request.getParameter("login"));
                        of.setPwd_oficina(request.getParameter("senha"));
                        of.setCep_oficina(request.getParameter("cep"));
                        of.setLgd_oficina(request.getParameter("logradouro"));
                        of.setBai_oficina(request.getParameter("bairro"));
                        of.setNum_oficina(Integer.parseInt(request.getParameter("numero")));
                        
                        of.inserir();
                        session.setAttribute("oficina", of);
                        response.sendRedirect("indexOficina.jsp");
                        break;
                    }
                    case "vinculaServico":{
                        Oficina oficina = (Oficina) session.getAttribute("oficina");
                        
                        String servico = request.getParameter("tipoServico");
                        
                        oficina.vincularServico(Integer.parseInt(servico));
                        response.sendRedirect("indexOficina.jsp");
                        break;
                    }
                    case "vinculaCarro":{
                        Oficina oficina = (Oficina) session.getAttribute("oficina");
                        
                        String carro = request.getParameter("carro");
                        
                        oficina.vincularCarro(Integer.parseInt(carro));
                        response.sendRedirect("indexOficina.jsp");
                        break;
                    }
                }
            }catch (Exception e){
                e.printStackTrace();
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
