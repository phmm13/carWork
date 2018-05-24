/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.util.ArrayList;

/**
 * @author Pedro Henrique Marcelino Matias
 * @date 24/05/2018
 */
public class viewInfo {
    private String nomeCliente;
    private String email;
    private String telefone;
    private String versaoCarro;
    private String modeloCarro;
    private String marcaCarro;
    private int idCliente;
    private int idCarro;

    public String getNomeCliente() {
        return nomeCliente;
    }

    public void setNomeCliente(String nomeCliente) {
        this.nomeCliente = nomeCliente;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getVersaoCarro() {
        return versaoCarro;
    }

    public void setVersaoCarro(String versaoCarro) {
        this.versaoCarro = versaoCarro;
    }

    public String getModeloCarro() {
        return modeloCarro;
    }

    public void setModeloCarro(String modeloCarro) {
        this.modeloCarro = modeloCarro;
    }

    public String getMarcaCarro() {
        return marcaCarro;
    }

    public void setMarcaCarro(String marcaCarro) {
        this.marcaCarro = marcaCarro;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public int getIdCarro() {
        return idCarro;
    }

    public void setIdCarro(int idCarro) {
        this.idCarro = idCarro;
    }
    public ArrayList<viewInfo> view() throws Exception{
        viewDAO vDAO = new viewDAO();
        return vDAO.viewInfo();
    }
}
