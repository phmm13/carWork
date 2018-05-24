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
public class TipoOficinaDAO extends DataBaseDAO{
    public void inserir (TipoOficina to) throws Exception{
        String sql = "INSERT INTO tipo_oficina (des_oficina) VALUES (?)";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setString(1,to.getDes_oficina());
        pstm.execute();
        this.desconectar();
    }
    public void alterar (TipoOficina to) throws Exception{
        String sql = "UPDATE tipo_oficina SET des_oficina=? WHERE id_tipo_oficina=?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setString(1,to.getDes_oficina());
        pstm.setInt(2,to.getId_tipo_oficina());
        pstm.execute();
        this.desconectar();
    }
    public void excluir (TipoOficina to) throws Exception{
        String sql = "DELETE tipo_oficina WHERE id_tipo_oficina = ?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setInt(1,to.getId_tipo_oficina());
        pstm.execute();
        this.desconectar();
    }
    public ArrayList<TipoOficina> listar () throws Exception{
        ArrayList<TipoOficina> lista = new ArrayList<TipoOficina>();
        String sql = "SELECT*FROM tipo_oficina";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        while(rs.next()){
            TipoOficina to = new TipoOficina();
            to.setId_tipo_oficina(rs.getInt("id_tipo_oficina"));
            to.setDes_oficina(rs.getString("des_oficina"));
            
            lista.add(to);
        }
        this.desconectar();
        return lista;
    }
    public TipoOficina carregaPorId(TipoOficina to) throws Exception{
        String sql = "SELECT*FROM tipo_oficina WHERE id_tipo_oficina=?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setInt(1,to.getId_tipo_oficina());
        ResultSet rs = pstm.executeQuery();
        TipoOficina to1 = new TipoOficina();
        if(rs.next()){
            to1.setId_tipo_oficina(rs.getInt("id_tipo_oficina"));
            to1.setDes_oficina(rs.getString("des_oficina"));
        }
        
        this.desconectar();
        return to1;
    }
}
