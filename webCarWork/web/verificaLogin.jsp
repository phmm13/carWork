<%@page import="model.Oficina"%>
<%
    try{
        Oficina oficina = new Oficina();
        oficina = (Oficina) session.getAttribute("oficina");
        if(oficina == null){
            response.sendRedirect("index.jsp");
        }
    }catch(Exception e){
        e.printStackTrace();
        response.sendRedirect("index.jsp");
        
    }
    


%>