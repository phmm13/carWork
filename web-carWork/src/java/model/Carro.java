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
public class Carro {
    private int id_carro;
    private String ano_carro;
    private Versao versao;

    public int getId_carro() {
        return id_carro;
    }

    public void setId_carro(int id_carro) {
        this.id_carro = id_carro;
    }

    public String getAno_carro() {
        return ano_carro;
    }

    public void setAno_carro(String ano_carro) {
        this.ano_carro = ano_carro;
    }

    public Versao getVersao() {
        return versao;
    }

    public void setVersao(Versao versao) {
        this.versao = versao;
    }
    public void inserir () throws Exception{
        CarroDAO cDAO = new CarroDAO();
        cDAO.inserir(this);
    }
    public void alterar () throws Exception{
        CarroDAO cDAO = new CarroDAO();
        cDAO.alterar(this);
    }
    public void excluir () throws Exception{
        CarroDAO cDAO = new CarroDAO();
        cDAO.excluir(this);
    }
    public Carro carregaPorId () throws Exception{
        CarroDAO cDAO = new CarroDAO();
        return cDAO.carregaPorId(this);
    }
    public ArrayList<Carro> listar () throws Exception{
        CarroDAO cDAO = new CarroDAO();
        return cDAO.listar();
    }
}
