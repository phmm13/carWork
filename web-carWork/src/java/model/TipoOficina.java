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
public class TipoOficina {
    private int id_tipo_oficina;
    private String des_oficina;

    public int getId_tipo_oficina() {
        return id_tipo_oficina;
    }

    public void setId_tipo_oficina(int id_tipo_oficina) {
        this.id_tipo_oficina = id_tipo_oficina;
    }

    public String getDes_oficina() {
        return des_oficina;
    }

    public void setDes_oficina(String des_oficina) {
        this.des_oficina = des_oficina;
    }
    public void inserir () throws Exception{
        TipoOficinaDAO toDAO = new TipoOficinaDAO();
        toDAO.inserir(this);
    }
    public void alterar () throws Exception{
        TipoOficinaDAO toDAO = new TipoOficinaDAO();
        toDAO.alterar(this);
    }
    public void excluir () throws Exception{
        TipoOficinaDAO toDAO = new TipoOficinaDAO();
        toDAO.excluir(this);
    }
    public TipoOficina carregaPorId () throws Exception{
        TipoOficinaDAO toDAO = new TipoOficinaDAO();
        return toDAO.carregaPorId(this);
    }
    public ArrayList<TipoOficina> lsitar () throws Exception{
        TipoOficinaDAO toDAO = new TipoOficinaDAO();
        return toDAO.listar();
    }
}
