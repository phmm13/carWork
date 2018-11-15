/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;

/**
 * @author Pedro Henrique Marcelino Matias
 * @date 03/05/2018
 */
public class Versao {

    private int id_versao;
    private String nome_versao;
    private Modelo modelo;

    public int getId_versao() {
        return id_versao;
    }

    public void setId_versao(int id_versao) {
        this.id_versao = id_versao;
    }

    public String getNome_versao() {
        return nome_versao;
    }

    public void setNome_versao(String nome_versao) {
        this.nome_versao = nome_versao;
    }

    public Modelo getModelo() {
        return modelo;
    }

    public void setModelo(Modelo modelo) {
        this.modelo = modelo;
    }
    public void inserir () throws Exception{
        VersaoDAO vDAO = new VersaoDAO();
        vDAO.inserir(this);
    }
    public void alterar () throws Exception{
        VersaoDAO vDAO = new VersaoDAO();
        vDAO.alterar(this);
    }
    public void excluir () throws Exception{
        VersaoDAO vDAO = new VersaoDAO();
        vDAO.excluir(this);
    }
    public Versao carregaPorId () throws Exception{
        VersaoDAO vDAO = new VersaoDAO();
        return vDAO.carregaPorId(this);
    }
    public ArrayList<Versao> listar () throws Exception{
        VersaoDAO vDAO = new VersaoDAO();
        return vDAO.listar();
    }

}
