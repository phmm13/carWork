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
public class Oficina {
    private int id_oficina;
    private String nome_oficina;
    private String telefone_oficina;
    private TipoOficina tipoOfcina;

    public int getId_oficina() {
        return id_oficina;
    }

    public void setId_oficina(int id_oficina) {
        this.id_oficina = id_oficina;
    }

    public String getNome_oficina() {
        return nome_oficina;
    }

    public void setNome_oficina(String nome_oficina) {
        this.nome_oficina = nome_oficina;
    }

    public String getTelefone_oficina() {
        return telefone_oficina;
    }

    public void setTelefone_oficina(String telefone_oficina) {
        this.telefone_oficina = telefone_oficina;
    }

    public TipoOficina getTipoOfcina() {
        return tipoOfcina;
    }

    public void setTipoOfcina(TipoOficina tipoOfcina) {
        this.tipoOfcina = tipoOfcina;
    }
    public void inserir () throws Exception{
        OficinaDAO oDAO = new OficinaDAO();
        oDAO.inserir(this);
    }
    public void alterar () throws Exception{
        OficinaDAO oDAO = new OficinaDAO();
        oDAO.alterar(this);
    }
    public void excluir () throws Exception{
        OficinaDAO oDAO = new OficinaDAO();
        oDAO.excluir(this);
    }
    public Oficina carregaPorId () throws Exception{
        OficinaDAO oDAO = new OficinaDAO();
        return oDAO.carregaPorId(this);
    }
    public ArrayList<Oficina> lsitar () throws Exception{
        OficinaDAO oDAO = new OficinaDAO();
        return oDAO.listar();
    }
}
