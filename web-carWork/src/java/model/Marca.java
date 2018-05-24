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
public class Marca {
    private int id_marca;
    private String nome_marca;

    public int getId_marca() {
        return id_marca;
    }

    public void setId_marca(int id_marca) {
        this.id_marca = id_marca;
    }

    public String getNome_marca() {
        return nome_marca;
    }

    public void setNome_marca(String nome_marca) {
        this.nome_marca = nome_marca;
    }
    public void inserir () throws Exception{
        MarcaDAO mDAO = new MarcaDAO();
        mDAO.inserir(this);
    }
    public void alterar () throws Exception{
        MarcaDAO mDAO = new MarcaDAO();
        mDAO.alterar(this);
    }
    public void excluir () throws Exception{
        MarcaDAO mDAO = new MarcaDAO();
        mDAO.excluir(this);
    }
    public Marca carregaPorId () throws Exception{
        MarcaDAO mDAO = new MarcaDAO();
        return mDAO.carregaPorId(this);
    }
    public ArrayList<Marca> lsitar () throws Exception{
        MarcaDAO mDAO = new MarcaDAO();
        return mDAO.listar();
    }
}
