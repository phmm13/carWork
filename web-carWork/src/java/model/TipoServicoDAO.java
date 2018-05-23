/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 * @author Pedro Henrique Marcelino Matias
 * @date 22/05/2018
 */
public class TipoServicoDAO extends DataBaseDAO{
    public void inserir (TipoServico ts) throws Exception{
        String sql = "INSERT INTO tipo_servico (des_tipo_servico) VALUES (?)";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setString(1,ts.getDes_tipo_servico());
        pstm.execute();
        this.desconectar();
    }
    public void alterar (TipoServico ts) throws Exception{
        String sql = "UPDATE tipo_servico SET des_tipo_servico=? WHERE id_tipo_servico=?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setString(1,ts.getDes_tipo_servico());
        pstm.setInt(2,ts.getId_tipo_servico());
        pstm.execute();
        this.desconectar();
    }
    public void excluir (TipoServico ts) throws Exception{
        String sql = "DELETE tipo_servico WHERE id_tipo_servico = ?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setInt(1,ts.getId_tipo_servico());
        pstm.execute();
        this.desconectar();
    }
    public ArrayList<TipoServico> listar () throws Exception{
        ArrayList<TipoServico> lista = new ArrayList<TipoServico>();
        String sql = "SELECT*FROM tipo_servico";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        while(rs.next()){
            TipoServico ts = new TipoServico();
            ts.setId_tipo_servico(rs.getInt("id_tipo_servico"));
            ts.setDes_tipo_servico(rs.getString("des_tipo_servico"));
            
            lista.add(ts);
        }
        this.desconectar();
        return lista;
    }
    public TipoServico carregaPorId(TipoServico ts) throws Exception{
        String sql = "SELECT*FROM tipo_servico WHERE id_tipo_servico=?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setInt(1,ts.getId_tipo_servico());
        ResultSet rs = pstm.executeQuery();
        TipoServico ts1 = new TipoServico();
        if(rs.next()){
            ts1.setId_tipo_servico(rs.getInt("id_tipo_servico"));
            ts1.setDes_tipo_servico(rs.getString("des_tipo_servico"));
        }
        
        this.desconectar();
        return ts1;
    }
}
