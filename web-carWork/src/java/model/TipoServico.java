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
public class TipoServico {
    private int id_tipo_servico;
    private String des_tipo_servico;

    public int getId_tipo_servico() {
        return id_tipo_servico;
    }

    public void setId_tipo_servico(int id_tipo_servico) {
        this.id_tipo_servico = id_tipo_servico;
    }

    public String getDes_tipo_servico() {
        return des_tipo_servico;
    }

    public void setDes_tipo_servico(String des_tipo_servico) {
        this.des_tipo_servico = des_tipo_servico;
    }
    public void inserir () throws Exception{
        TipoServicoDAO tsDAO = new TipoServicoDAO();
        tsDAO.inserir(this);
    }
    public void alterar () throws Exception{
        TipoServicoDAO tsDAO = new TipoServicoDAO();
        tsDAO.alterar(this);
    }
    public void excluir () throws Exception{
        TipoServicoDAO tsDAO = new TipoServicoDAO();
        tsDAO.excluir(this);
    }
    public TipoServico carregaPorId () throws Exception{
        TipoServicoDAO tsDAO = new TipoServicoDAO();
        return tsDAO.carregaPorId(this);
    }
    public ArrayList<TipoServico> listar () throws Exception{
        TipoServicoDAO tsDAO = new TipoServicoDAO();
        return tsDAO.listar();
    }
}
